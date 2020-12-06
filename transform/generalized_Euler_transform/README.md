# A generalized Euler transform.

Suppose given two sequences f(n) and g(n), n>0, we define a new sequence a(n), n>=0, by Product_{n>0} (1 - g(n) * x^n)^(-f(n)) = a(0) + a(1) * x + a(2) * x^2 + ...

Since Product_{n>0} (1 - g(n) * x^n)^(-f(n)) = exp(Sum_{n>0} (Sum_{d|n} d * f(d) * g(d)^(n/d)) * x^n/n), we see that a(n) is given explicitly by a(n) = (1/n) * Sum_{k=1..n} b(k) * a(n-k) where b(n) = Sum_{d|n} d * f(d) * g(d)^(n/d).

Examples:

1. If we set g(n) = 1, we get the usual Euler transform.

2. If we set f(n) = -h(n) and g(n) = -1, we get the weighout transform (cf. A026007).

3. If we set f(n) = -n and g(n) = n, we get A266964.

# Application

genET behaves like log, so

   genET(x * y) = genET(x) + genET(y),
   
   genET(x^m) = m * genET(X)


## list

| Number | G.f. | ary([[f_1, g_1], [f_2, g_2], ...]) |
| ----- | ----- | ----- | 
| [A010815](https://oeis.org/A010815) | Product_{k>0} (1 - x^k) | [[-1, 1]] |
| [A182605](https://oeis.org/A182605) | Product_{k>0} (1 - x^k)/(1 - 11 * x^k) | [[-1, 1], [1, 11]] |
| [A266964](https://oeis.org/A266964) | Product_{k>0} (1 - k * x^k)^k | [[-n, n]] |
| [A295123](https://oeis.org/A295123) | Product_{k>0} 1/(1 + x^k)^(k * (3 * k - 2) | [[n * (3 * n - 2), -1]] |
| [A319756](https://oeis.org/A319756) | Product_{k>0} (1 - x^k)/(1 - k * x^k) | [[-1, 1], [1, n]] |
