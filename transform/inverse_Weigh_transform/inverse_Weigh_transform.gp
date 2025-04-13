\\ Cf. A136628
\\ read("transforms_pari.txt"); or
/* inverse weigh transform
 * this function ignores a_0 (A[1]) and assumes it to be 1
 * the output sequence always has b_0=0
 * trv_i_weigh_x is a version not making that assumption
 */
 
{ trv_i_weigh(A) = local(i=-1,B=vector(#A-1,n,i=-i;i*1/n),C);
  A[1] = 1;
  C = log(Ser(A));
  A=vecextract(A,"2..");
  for(i=1, #A, A[i] = polcoeff(C,i));
  A = dirdiv(A,B);
  concat(0,A)
}