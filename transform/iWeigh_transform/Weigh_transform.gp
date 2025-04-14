\\ Christian G. Bower氏の以下のコードを使用
\\ https://oeis.org/transforms_pari.txt
\\ ライセンスは上記に従う

\\ read("transforms_pari.txt"); or
/* weigh transform
 * apply set structure to sequence of unlabeled objects
 * injectively (or asymmetrically)
 * this function ignores a_0 (A[1]) and assumes it to be 0
 * the output sequence always has b_0=1
 * trv_weigh_x is a version not making that assumption
 */

\\ 0から始まることに注意
{ trv_weigh(A) = local(i=-1,B=vector(#A-1,n,i=-i;i/n),C);
  B = dirmul(vecextract(A,"2.."),B);
  C = exp(Ser(concat(0,B)));
  for(i=1, #A, A[i] = polcoeff(C,i-1));
  A
}

M=20;

print("A027998")
f(n) = n^2;
a_vector(n) = my(A=vector(n+1, k, f(k-1))); trv_weigh(A);
a_vector(M)
