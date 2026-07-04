#!/usr/bin/env sage
# =============================================================================
# Creative telescoping (Zeilberger) for
#     a(0) = 1
#     a(n) = (1/n) * sum_{k=1}^{n} k * binomial(2k,k) * binomial(2n-k-1, n-1)
#
# Install once:
#   sage -pip install --no-build-isolation \
#        git+https://github.com/mkauers/ore_algebra.git
#   sage ct_sum.sage
# =============================================================================

# --- 0. Work around an ore_algebra bug --------------------------------------
# For a MULTIVARIATE Ore algebra, associated_commutative_algebra() builds its
# commutative shadow with
#     MPolynomialRing_libsingular(base, 1, ('Sn','Sk'))
# hard-coding the generator count to 1 while passing 2 names, which raises
#     IndexError: the number of names must equal the number of generators
# as soon as the coefficient ring is one Singular accepts (e.g. QQ(n,k)).
# We replace the method with the correct construction (which over a field is
# itself a libsingular ring, so Groebner bases still work).
import ore_algebra.ore_algebra as _oa

def _patched_aca(self):
    try:
        return self._commutative_ring
    except AttributeError:
        pass
    self._commutative_ring = PolynomialRing(self.base_ring(), self.variable_names())
    return self._commutative_ring

_oa.OreAlgebra_generic.associated_commutative_algebra = _patched_aca

# Sage >= 10.x builds an ideal monoid that queries ring.is_commutative();
# older ore_algebra parents don't expose it.  Ore algebras are noncommutative:
if not hasattr(_oa.OreAlgebra_generic, "is_commutative"):
    _oa.OreAlgebra_generic.is_commutative = lambda self: False
# ----------------------------------------------------------------------------

from ore_algebra import OreAlgebra, guess

# The sequence (defined first, used by both methods below)
def a(m):
    if m == 0:
        return QQ(1)
    return QQ(1)/m * sum(j*binomial(2*j, j)*binomial(2*m - j - 1, m - 1)
                         for j in range(1, m + 1))

print("a(0..8) =", [a(m) for m in range(9)])
print()

# --- 1. Creative telescoping over  QQ(n,k)[Sn, Sk] --------------------------
try:
    K = PolynomialRing(QQ, ('n', 'k')).fraction_field()   # QQ(n,k)
    n, k = K.gens()
    A = OreAlgebra(K, 'Sn', 'Sk')
    Sn, Sk = A.gens()

    # summand F(n,k) = k*binomial(2k,k)*binomial(2n-k-1,n-1)/n ; its annihilators:
    #   F(n,k+1)/F(n,k) = 2(2k+1)(n-k)/[k(2n-k-1)]
    #   F(n+1,k)/F(n,k) = (2n-k+1)(2n-k)/[(n+1)(n-k+1)]
    gen_k = k*(2*n - k - 1)*Sk - 2*(2*k + 1)*(n - k)
    gen_n = (n + 1)*(n - k + 1)*Sn - (2*n - k + 1)*(2*n - k)

    telescopers, certificates = A.ideal([gen_k, gen_n]).ct(Sk - 1)
    L = telescopers[0]
    print("[CT] minimal telescoper T(n, Sn):")
    print("    ", L)
    print("[CT] order =", L.order())
    print("[CT] certificate:", certificates[0])
except Exception as e:
    import traceback
    print("[CT] failed:", repr(e))
    traceback.print_exc()

print()

# --- 2. Guessing (univariate; independent, avoids the multivariate path) -----
data = [a(m) for m in range(30)]
Bn = OreAlgebra(PolynomialRing(QQ, 'n'), 'Sn')
rec = guess(data, Bn)
print("[guess] recurrence operator:")
print("    ", rec)
print("[guess] order =", rec.order())

print()

# --- 3. Independent confirmation of the explicit order-2 recurrence ----------
#   3(n+1)(n+2) a(n+2) - 2(n+1)(14n+15) a(n+1) + 4(4n+1)(4n+3) a(n) = 0
chk = all(3*(m+1)*(m+2)*a(m+2) - 2*(m+1)*(14*m+15)*a(m+1)
          + 4*(4*m+1)*(4*m+3)*a(m) == 0 for m in range(0, 40))
print("explicit order-2 recurrence holds (n=0..39):", chk)
