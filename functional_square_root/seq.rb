require './fsr'

n = 20

(2..6).each{|i|
    f_ary = [0, 1, i * i, i * i * i] + [0] * (n - 3)
    p a = fsr(f_ary, n, i)
    p a.map(&:to_i)
}

(2..6).each{|i|
    f_ary = [0, 1, i * i] + [0] * (n - 2)
    p a = fsr(f_ary, n, i)
    p a.map(&:to_i)
}

