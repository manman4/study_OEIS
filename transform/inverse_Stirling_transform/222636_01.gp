\\ Christian G. Bower氏の以下のコードを使用
\\ https://oeis.org/transforms_pari.txt
\\ ライセンスは上記に従う

\\ read("transforms_pari.txt"); or
/* inverse stirling transform
 */
{ trv_i_stirling(A) = local(x='x,B);
  B = sum(i=0, #A-1, A[i+1]*x^i/i!);
  B = subst(B+O(x^#A),x,log(1+x+O(x^#A)));
  for(i=0,#A-1, A[i+1] = polcoeff(B,i)*i!);
  A
};

M=15;

print("A222636")
f(n) = (n+1)^3;
a_vector(n) = my(A=vector(n+1, k, f(k-1))); trv_i_stirling(A);
a_vector(M)

f(n) = (n+1)^3;
a(n) = sum(k=0, n, f(k)*stirling(n, k, 1));
for(n=0, M, print1(a(n), ", "));
