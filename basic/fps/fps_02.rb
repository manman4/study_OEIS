# encoding: utf-8
# PS: formal power series -- F^k = exp(k * log F)
#
# coefficients stay in Integer/Rational throughout.
# k can be any Rational (1/2, -1, 2, ...).
#
# log and exp use the coefficient recurrences:
#   log: g[n] = (1/n)(n*f[n] - sum_{j=1}^{n-1} j*g[j]*f[n-j])
#   exp: f[n] = (1/n)  sum_{j=1}^{n}  j*h[j]*f[n-j]

class PS
  # Default truncation order (class-level).  Change with PS.prec = n.
  @prec = 10
  class << self
    attr_accessor :prec
  end

  attr_reader :prec

  # coeffs: [c0, c1, c2, ...] for  c0 + c1*x + c2*x^2 + ...
  # prec  : terms to keep (x^0..x^(prec-1)).  defaults to PS.prec.
  def initialize(coeffs, prec: PS.prec)
    @prec = prec
    @c = Array.new(prec, Rational(0))
    coeffs.each_with_index { |v, i| @c[i] = Rational(v) if i < prec }
  end

  def [](i) = (0 <= i && i < @prec) ? @c[i] : Rational(0)
  def coeffs = @c.dup

  # ---- arithmetic ----
  def +(o) = PS.new(@c.zip(o.coeffs).map { _1 + _2 }, prec: @prec)
  def -(o) = PS.new(@c.zip(o.coeffs).map { _1 - _2 }, prec: @prec)
  def -@   = PS.new(@c.map(&:-@), prec: @prec)

  def *(o)
    r = Array.new(@prec, Rational(0))
    @prec.times do |i|
      next if @c[i] == 0
      (@prec - i).times { |j| r[i + j] += @c[i] * o[j] }
    end
    PS.new(r, prec: @prec)
  end

  def scale(k)
    PS.new(@c.map { _1 * Rational(k) }, prec: @prec)
  end

  # ---- F^k = exp(k * log F) ----
  def **(k)
    k = Rational(k)
    return PS.new([1], prec: @prec) if k == 0
    log.scale(k).exp
  end

  # ---- formal log: requires f[0] = 1 ----
  # Derived from  (log f)' = f'/f
  def log
    raise ArgumentError, "constant term must be 1 for log" unless @c[0] == 1
    g = Array.new(@prec, Rational(0))
    (1...@prec).each do |n|
      s = n * @c[n]
      (1...n).each { |j| s -= j * g[j] * @c[n - j] }
      g[n] = s / n
    end
    PS.new(g, prec: @prec)
  end

  # ---- formal exp: requires h[0] = 0 ----
  # Derived from  (exp h)' = h' * exp h
  def exp
    raise ArgumentError, "constant term must be 0 for exp" unless @c[0] == 0
    f = Array.new(@prec, Rational(0))
    f[0] = Rational(1)
    (1...@prec).each do |n|
      s = Rational(0)
      n.times { |j| s += (j + 1) * self[j + 1] * f[n - 1 - j] }
      f[n] = s / n
    end
    PS.new(f, prec: @prec)
  end

  # ---- display ----
  def to_s
    terms = []
    @c.each_with_index do |c, i|
      next if c == 0
      # simplify rational to integer string when denominator is 1
      cs = c.denominator == 1 ? c.numerator.to_s : c.to_s
      xs = i == 0 ? "" : i == 1 ? "x" : "x^#{i}"
      term = if i == 0
               cs
             elsif c == 1
               xs
             elsif c == -1
               "-#{xs}"
             else
               "#{cs}*#{xs}"
             end
      terms << term
    end
    terms.empty? ? "0" : terms.join(" + ").gsub("+ -", "- ")
  end

  def inspect = "PS(#{to_s})"
end

# ---- demo ----
if __FILE__ == $0
  puts "=== PS: F^k = exp(k*logF), exact Rational coefficients ===\n\n"

  # デフォルト prec = 10 のまま使う
  f = PS.new([1, 1, 0, Rational(2, 3)])
  puts "PS.prec = #{PS.prec}  (デフォルト打ち切り次数)"
  puts "f       = #{f}"
  puts "f^2     = #{f ** 2}"
  puts "f^(1/2) = #{f ** Rational(1, 2)}"
  puts

  # 途中でデフォルトを変更
  PS.prec = 20
  puts "PS.prec = #{PS.prec}  に変更"
  g = PS.new([1, 1, 0, Rational(2, 3)])
  puts "f^(1/2) = #{g ** Rational(1, 2)}"
  puts

  # 個別に指定（既存の挙動も維持）
  PS.prec = 10
  puts "PS.prec = #{PS.prec}  に戻す"
  h = PS.new([1, -1, -1], prec: 14)   # この1つだけ 14項
  puts "Fibonacci g.f. (1-x-x^2)^(-1), prec:14 ="
  puts "  #{h ** -1}"
end
