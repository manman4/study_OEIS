#!/usr/bin/env sage
# =============================================================================
# Creative telescoping (Zeilberger) + guessing for several hypergeometric sums.
# The recurrence is printed both as an operator in Sn and as a backward relation
#   in a(n), a(n-1), ..., a(n-d)  with integer coefficients.
#
#   sage -pip install --no-build-isolation \
#        git+https://github.com/mkauers/ore_algebra.git
#   sage multi_ct.sage
# =============================================================================

# --- monkeypatches for Sage 10.1 <-> ore_algebra incompatibilities ----------
import ore_algebra.ore_algebra as _oa

def _patched_aca(self):
    try:
        return self._commutative_ring
    except AttributeError:
        pass
    self._commutative_ring = PolynomialRing(self.base_ring(), self.variable_names())
    return self._commutative_ring

_oa.OreAlgebra_generic.associated_commutative_algebra = _patched_aca
if not hasattr(_oa.OreAlgebra_generic, "is_commutative"):
    _oa.OreAlgebra_generic.is_commutative = lambda self: False
# ----------------------------------------------------------------------------

from ore_algebra import OreAlgebra, guess

K = PolynomialRing(QQ, ('n', 'k')).fraction_field()   # QQ(n,k)
n, k = K.gens()
A = OreAlgebra(K, 'Sn', 'Sk')
Sn, Sk = A.gens()
Bn = OreAlgebra(PolynomialRing(QQ, 'n'), 'Sn')        # univariate, for guessing


def ev(c, Kn, m):
    c = Kn(c)
    return c.numerator()(m) / c.denominator()(m)


def integer_form(op, match=None):
    """Rescale op to primitive integer coefficients (as an operator in Bn)."""
    Rn = Bn.base_ring()
    Snb = Bn.gen()
    d = op.order()
    coeffs = [op[i] for i in range(d + 1)]
    nums = [Rn(c.numerator()) for c in coeffs]
    dens = [Rn(c.denominator()) for c in coeffs]
    D = lcm(dens)
    polys = [nums[i] * (D // dens[i]) for i in range(d + 1)]
    m = lcm([QQ(a).denominator() for p in polys for a in p.list()] + [ZZ(1)])
    polys = [m * p for p in polys]
    allc = [ZZ(a) for p in polys for a in p.list()]
    g = gcd(allc) if allc else ZZ(1)
    if g == 0:
        g = ZZ(1)
    ipolys = [Rn([ZZ(a) // g for a in p.list()]) for p in polys]
    if ipolys[-1].leading_coefficient() < 0:
        ipolys = [-p for p in ipolys]
    if match is not None and match.order() == d:
        if (match[d].leading_coefficient() < 0) != (ipolys[-1].leading_coefficient() < 0):
            ipolys = [-p for p in ipolys]
    return sum(Rn(ipolys[i]) * Snb**i for i in range(len(ipolys)))


def backward_relation(op):
    """Rewrite  sum_i c_i(n) a(n+i) = 0  as a relation in a(n), a(n-1), ...,
    a(n-d) by substituting n -> n-d.  Returns a printable string; the sign is
    fixed so the coefficient of a(n) has positive leading term."""
    Rn = op.parent().base_ring()
    nn = Rn.gen()
    d = op.order()
    cs = [op[d - j](nn - d) for j in range(d + 1)]     # cs[j] multiplies a(n-j)
    if cs[0].leading_coefficient() < 0:
        cs = [-c for c in cs]
    out = ""
    first = True
    for j, c in enumerate(cs):
        if c == 0:
            continue
        lbl = "a(n)" if j == 0 else "a(n-%d)" % j
        if len(c.exponents()) >= 2:                    # genuine polynomial -> parens
            piece = "(%s)*%s" % (c, lbl)
            out += piece if first else " + " + piece
        else:                                          # monomial/constant -> bare
            neg = c.leading_coefficient() < 0
            mag = -c if neg else c
            magstr = "" if mag == 1 else "%s*" % mag    # drop redundant 1*
            if first:
                out += ("-" if neg else "") + magstr + lbl
            else:
                out += (" - " if neg else " + ") + magstr + lbl
        first = False
    return out + " = 0"


examples = [
    dict(name="a(n) = (1/n) sum k*C(2k,k)*C(2n-k-1,n-1)",
         seq=lambda m: QQ(1) if m == 0 else
             QQ(1)/m*sum(j*binomial(2*j, j)*binomial(2*m-j-1, m-1) for j in range(1, m+1)),
         rk=(4*k**2 - 4*k*n + 2*k - 2*n,  k**2 - 2*k*n + k),
         rn=(-k**2 + 4*k*n + k - 4*n**2 - 2*n,  k*n + k - n**2 - 2*n - 1)),

    dict(name="Catalan: a(n) = (1/(n+1)) sum C(n,k)^2",
         seq=lambda m: QQ(sum(binomial(m, j)**2 for j in range(m+1)))/(m+1),
         rk=(k**2 - 2*k*n + n**2,  k**2 + 2*k + 1),
         rn=(n**3 + 3*n**2 + 3*n + 1,
             k**2*n + 2*k**2 - 2*k*n**2 - 6*k*n - 4*k + n**3 + 4*n**2 + 5*n + 2)),

    dict(name="central binomial: a(n) = sum C(n,k)^2 = C(2n,n)",
         seq=lambda m: QQ(sum(binomial(m, j)**2 for j in range(m+1))),
         rk=(k**2 - 2*k*n + n**2,  k**2 + 2*k + 1),
         rn=(n**2 + 2*n + 1,  k**2 - 2*k*n - 2*k + n**2 + 2*n + 1)),

    dict(name="Franel: a(n) = sum C(n,k)^3",
         seq=lambda m: QQ(sum(binomial(m, j)**3 for j in range(m+1))),
         rk=(-k**3 + 3*k**2*n - 3*k*n**2 + n**3,  k**3 + 3*k**2 + 3*k + 1),
         rn=(-n**3 - 3*n**2 - 3*n - 1,
             k**3 - 3*k**2*n - 3*k**2 + 3*k*n**2 + 6*k*n + 3*k - n**3 - 3*n**2 - 3*n - 1)),

    dict(name="Apery: a(n) = sum C(n,k)^2 C(n+k,k)^2",
         seq=lambda m: QQ(sum(binomial(m, j)**2*binomial(m+j, j)**2 for j in range(m+1))),
         rk=(k**4 + 2*k**3 - 2*k**2*n**2 - 2*k**2*n + k**2 - 2*k*n**2 - 2*k*n + n**4 + 2*n**3 + n**2,
             k**4 + 4*k**3 + 6*k**2 + 4*k + 1),
         rn=(k**2 + 2*k*n + 2*k + n**2 + 2*n + 1,  k**2 - 2*k*n - 2*k + n**2 + 2*n + 1)),

    dict(name="central Delannoy: a(n) = sum C(n,k) C(n+k,k)",
         seq=lambda m: QQ(sum(binomial(m, j)*binomial(m+j, j) for j in range(m+1))),
         rk=(-k**2 - k + n**2 + n,  k**2 + 2*k + 1),
         rn=(-k - n - 1,  k - n - 1)),
]

for ex in examples:
    print("=" * 70)
    print(ex["name"])
    seqf = ex["seq"]
    vals = [seqf(m) for m in range(8)]
    print("  seq:", [int(v) if v.denominator() == 1 else v for v in vals])

    intop = None
    try:
        g = guess([seqf(m) for m in range(40)], Bn)
        intop = g
        print("  [Sn ]  ", g)
    except Exception as e:
        g = None
        print("  [guess] failed:", e)

    try:
        rk_num, rk_den = ex["rk"]
        rn_num, rn_den = ex["rn"]
        gen_k = rk_den*Sk - rk_num
        gen_n = rn_den*Sn - rn_num
        tele, cert = A.ideal([gen_k, gen_n]).ct(Sk - 1)
        L = tele[0]
        Lint = integer_form(L, match=g)
        if intop is None:
            intop = Lint
        Kn = L.parent().base_ring()
        d = L.order()
        ok = all(sum(ev(L[i], Kn, m)*seqf(m+i) for i in range(d+1)) == 0
                 for m in range(1, 12))
        print("  [CT ]   annihilates: %s   CT == guess: %s" % (ok, g is not None and Lint == g))
    except Exception as e:
        print("  [CT ]   failed:", e)

    if intop is not None:
        print("  [rec]  ", backward_relation(intop))
