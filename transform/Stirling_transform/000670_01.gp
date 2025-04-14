\\ Christian G. Bower氏の以下のコードを使用
\\ https://oeis.org/transforms_pari.txt
\\ ライセンスは上記に従う

\\ read("transforms_pari.txt"); or
/* stirling transform
 * apply given labeled structure to non-empty sets
 */
{ trv_stirling(A) = local(x='x,B);
  B = sum(i=0, #A-1, A[i+1]*x^i/i!);
  B = subst(B+O(x^#A),x,exp(x+O(x^#A))-1);
  for(i=0,#A-1, A[i+1] = polcoeff(B,i)*i!);
  A
};

M=15;

print("A000670")
f(n) = n!;
a_vector(n) = my(A=vector(n+1, k, f(k-1))); trv_stirling(A);
a_vector(M)

f(n) = n!;
a(n) = sum(k=0, n, f(k)*stirling(n, k, 2));
for(n=0, M, print1(a(n), ", "));
