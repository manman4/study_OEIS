\\ Let p, q and c be positive integers with p < q and gcd(p,q) = 1.
\\ Let h be the least nonnegative integer such that q*h >= c and p divides q*h-c.
\\ Then a(n) is the number of compositions of q*n-c into parts p and q.
\\ a(n) = Sum_{k>=0} binomial(n+(q*h-c)/p-h+(q-p)*k, n-h-p*k).
\\ G.f.: x^h/((1-x)^((q*h-c)/p+1)*(1-x^p/(1-x)^q)).
\\ Here binomial(r,s) = 0 if s < 0 or s > r. The empty composition of 0 is counted.

default(parisize, 200000000);

N = 20;

find_h(p, q, c) =
{
  my(h = 0);
  while(q*h < c || (q*h-c) % p != 0, h++);
  h;
}

\\ Direct dynamic programming count. The empty composition of 0 is counted.
composition_count(m, p, q) =
{
  my(a);
  if(m < 0, return(0));
  a = vector(m+1);
  a[1] = 1;
  for(t=1, m,
    a[t+1] = if(t >= p, a[t-p+1], 0)
           + if(t >= q, a[t-q+1], 0);
  );
  a[m+1];
}

formula_count(n, p, q, c, h) =
{
  my(s = (q*h-c)/p);
  if(n < h, return(0));
  sum(k=0, (n-h)\p,
    binomial(n+s-h+(q-p)*k, n-h-p*k)
  );
}

check_case(p, q, c, verbose=0) =
{
  my(h, s, A, direct, formula, gf, ok = 1);

  if(p <= 0 || q <= p, error("Require 0 < p < q"));
  if(c <= 0, error("Require c > 0"));
  if(gcd(p, q) != 1, error("Require gcd(p,q) = 1"));

  h = find_h(p, q, c);
  s = (q*h-c)/p;
  A = x^h/((1-x)^(s+1)*(1-x^p/(1-x)^q)) + O(x^(N+1));

  for(n=0, N,
    direct = composition_count(q*n-c, p, q);
    formula = formula_count(n, p, q, c, h);
    gf = polcoef(A, n);
    if(direct != formula || direct != gf,
      ok = 0;
      print(["FAIL", p, q, c, h, n, direct, formula, gf]);
    );
  );

  if(verbose,
    print(["CASE", "p", p, "q", q, "c", c, "h", h, "s", s]);
    print(["a(0..N)", vector(N+1, j, composition_count(q*(j-1)-c, p, q))]);
    print(["RESULT", if(ok, "OK", "FAIL")]);
  );
  ok;
}

batch_check(pmax, qmax, cmax) =
{
  my(total = 0, bad = 0);
  for(p=1, pmax,
    for(q=p+1, qmax,
      if(gcd(p, q) == 1,
        for(c=1, cmax,
          total++;
          if(!check_case(p, q, c), bad++);
        );
      );
    );
  );
  print(["BATCH_DONE", "total", total, "bad", bad,
         "result", if(bad == 0, "ALL_OK", "FAIL")]);
  bad == 0;
}

print(["PARI_version", version()]);

\\ The two motivating examples.
check_case(1, 5, 2, 1);
check_case(2, 7, 2, 1);

\\ Exhaustive check for 1 <= p <= 8, p < q <= 12, 1 <= c <= 20,
\\ and 0 <= n <= N.
batch_check(8, 12, 20);
