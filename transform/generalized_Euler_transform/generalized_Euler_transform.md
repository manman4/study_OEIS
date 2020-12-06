# A generalized Euler transform.

Suppose given two sequences f(n) and g(n), n>0, we define a new sequence a(n), n>=0, by Product_{n>0} (1 - g(n)*x^n)^(-f(n)) = a(0) + a(1)*x + a(2)*x^2 + ...

Since Product_{n>0} (1 - g(n)*x^n)^(-f(n)) = exp(Sum_{n>0} (Sum_{d|n} d*f(d)*g(d)^(n/d))*x^n/n), we see that a(n) is given explicitly by a(n) = (1/n) * Sum_{k=1..n} b(k)*a(n-k) where b(n) = Sum_{d|n} d*f(d)*g(d)^(n/d).

Examples:

1. If we set g(n) = 1, we get the usual Euler transform.

2. If we set f(n) = -h(n) and g(n) = -1, we get the weighout transform (cf. A026007).

3. If we set f(n) = -n and g(n) = n, we get this sequence.