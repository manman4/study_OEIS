# Bell transform 

以下で導入された。

[The Bell Transform](https://oeis.org/wiki/User:Peter_Luschny/BellTransform)

ちなみに、以下にはない。

Maple https://oeis.org/transforms.txt

PARI/GP https://oeis.org/transforms_pari.txt

| 番号 | a(n) |
|----- | ----- | 
| A048993 |  if(n<1, 0, 1)  |
| A059297 |  n  |
| A338805 |  if(n<1, 0, (n-1)! * numdiv(n))  |
| A338813 |  if(n<1, 0, (n-1)! * sumdiv(n, d, (-1)^(d+1)))  |
| A008298 |  if(n<1, 0, (n-1)! * sigma(n))  |
| A075525 |  if(n<1, 0, (n-1)! * sumdiv(n, d, (-1)^(d+1) * n/d))  |

