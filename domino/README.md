# domino

ダイマー模型に関して(予想も含む)

OFFSETについては変更される可能性あり。

| Number | 式 | OFFSET | 
| ----- | ----- | ----- |
| [A007726](https://oeis.org/A007726) | Prod_{1<=j<k<=n-1} (4 * sin(j * Pi/(2 * n))^2     + 4 * sin(k * Pi/(2 * n))^2)     | 1 |
| [A007726](https://oeis.org/A007726) | Prod_{1<=j<k<=n-1} (4 * cos(j * Pi/(2 * n))^2     + 4 * cos(k * Pi/(2 * n))^2)     | 1 |
| [A007341](https://oeis.org/A007341) | Prod_{1<=j,k<=n-1} (4 * sin(j * Pi/(2 * n))^2     + 4 * sin(k * Pi/(2 * n))^2)     | 1 |
| [A007341](https://oeis.org/A007341) | Prod_{1<=j,k<=n-1} (4 * cos(j * Pi/(2 * n))^2     + 4 * cos(k * Pi/(2 * n))^2)     | 1 |
| [A007341](https://oeis.org/A007341) | Prod_{1<=j,k<=n-1} (4 * sin(j * Pi/(2 * n))^2     + 4 * cos(k * Pi/(2 * n))^2)     | 1 |
| [A340052](https://oeis.org/A340052) | Prod_{1<=j<k<=n}   (4 * sin(j * Pi/(2 * n + 1))^2 + 4 * sin(k * Pi/(2 * n + 1))^2) | 0 |
| [A065072](https://oeis.org/A065072) | Prod_{1<=j<k<=n}   (4 * cos(j * Pi/(2 * n + 1))^2 + 4 * cos(k * Pi/(2 * n + 1))^2) | 0 |
| [A127605](https://oeis.org/A127605) | Prod_{1<=j,k<=n}   (4 * sin(j * Pi/(2 * n + 1))^2 + 4 * sin(k * Pi/(2 * n + 1))^2) | 0 |
| [A004003](https://oeis.org/A004003) | Prod_{1<=j,k<=n}   (4 * cos(j * Pi/(2 * n + 1))^2 + 4 * cos(k * Pi/(2 * n + 1))^2) | 0 |
| [A127606](https://oeis.org/A127606) | Prod_{1<=j,k<=n}   (4 * sin(j * Pi/(2 * n + 1))^2 + 4 * cos(k * Pi/(2 * n + 1))^2) | 0 |

| Number | 式 | OFFSET | 
| ----- | ----- | ----- |
| [A340562](https://oeis.org/A340562) |      Prod_{1<=j,k<=n-1} (4 * sin(j * Pi/n)^2 + 4 * sin(k * Pi/n)^2)  | 1 |
| [A340563](https://oeis.org/A340563) | sqrt(Prod_{1<=j,k<=n-1} (4 * sin(j * Pi/n)^2 + 4 * cos(k * Pi/n)^2)) | 0 |

| Number | 式 | OFFSET | 
| ----- | ----- | ----- |
| [A340139](https://oeis.org/A340139) | 4^((n-2) * (n-1))     * Prod_{1<=j<k<=n-1} (1 - sin(j * Pi/(2 * n))^2     * sin(k * Pi/(2 * n))^2)     | 1 |
| [A340139](https://oeis.org/A340139) | 4^((n-2) * (n-1))     * Prod_{1<=j<k<=n-1} (1 - cos(j * Pi/(2 * n))^2     * cos(k * Pi/(2 * n))^2)     | 1 |
| [A340166](https://oeis.org/A340166) | 4^(2 * (n-1)^2)       * Prod_{1<=j,k<=n-1} (1 - sin(j * Pi/(2 * n))^2     * sin(k * Pi/(2 * n))^2)     | 1 |
| [A340166](https://oeis.org/A340166) | 4^(2 * (n-1)^2)       * Prod_{1<=j,k<=n-1} (1 - cos(j * Pi/(2 * n))^2     * cos(k * Pi/(2 * n))^2)     | 1 |
| [A340166](https://oeis.org/A340166) | 4^(2 * (n-1)^2)       * Prod_{1<=j,k<=n-1} (1 - sin(j * Pi/(2 * n))^2     * cos(k * Pi/(2 * n))^2)     | 1 |
| [A340293](https://oeis.org/A340293) | 4^((n-1) * n)         * Prod_{1<=j<k<=n}   (1 - sin(j * Pi/(2 * n + 1))^2 * sin(k * Pi/(2 * n + 1))^2) | 0 |
| [A340185](https://oeis.org/A340185) | 4^((n-1) * n)         * Prod_{1<=j<k<=n}   (1 - cos(j * Pi/(2 * n + 1))^2 * cos(k * Pi/(2 * n + 1))^2) | 0 |
| [A340292](https://oeis.org/A340292) | 4^(2 * n^2)           * Prod_{1<=j,k<=n}   (1 - sin(j * Pi/(2 * n + 1))^2 * sin(k * Pi/(2 * n + 1))^2) | 0 |
| [A340291](https://oeis.org/A340291) | 4^(2 * n^2)           * Prod_{1<=j,k<=n}   (1 - cos(j * Pi/(2 * n + 1))^2 * cos(k * Pi/(2 * n + 1))^2) | 0 |
| [A340295](https://oeis.org/A340295) | 4^(2 * n^2)           * Prod_{1<=j,k<=n}   (1 - sin(j * Pi/(2 * n + 1))^2 * cos(k * Pi/(2 * n + 1))^2) | 0 |

その他

| Number | 式 | OFFSET | 
| ----- | ----- | ----- |
| [A340176](https://oeis.org/A340176) | 4^((n-1)^2)           * Prod_{1<=j<k<=n-1} (1 - sin(j * Pi/(2 * n))^2     * sin(k * Pi/(2 * n))^2)     | 0 |
| [A340176](https://oeis.org/A340176) | 4^((n-1)^2)           * Prod_{1<=j<k<=n-1} (1 - cos(j * Pi/(2 * n))^2     * cos(k * Pi/(2 * n))^2)     | 0 |
| [A340352](https://oeis.org/A340352) | 4^(2 * (n-1) * n)     * Prod_{1<=j,k<=n-1} (1 - sin(j * Pi/(2 * n))^2     * sin(k * Pi/(2 * n))^2)     | 1 |
| [A340352](https://oeis.org/A340352) | 4^(2 * (n-1) * n)     * Prod_{1<=j,k<=n-1} (1 - cos(j * Pi/(2 * n))^2     * cos(k * Pi/(2 * n))^2)     | 1 |
| [A340352](https://oeis.org/A340352) | 4^(2 * (n-1) * n)     * Prod_{1<=j,k<=n-1} (1 - sin(j * Pi/(2 * n))^2     * cos(k * Pi/(2 * n))^2)     | 1 |
| [A007725](https://oeis.org/A007725) | 4^(2 * (n-1) * n + 1) * Prod_{1<=j,k<=n-1} (1 - sin(j * Pi/(2 * n))^2     * sin(k * Pi/(2 * n))^2)     | 0 |
| [A007725](https://oeis.org/A007725) | 4^(2 * (n-1) * n + 1) * Prod_{1<=j,k<=n-1} (1 - cos(j * Pi/(2 * n))^2     * cos(k * Pi/(2 * n))^2)     | 0 |
| [A007725](https://oeis.org/A007725) | 4^(2 * (n-1) * n + 1) * Prod_{1<=j,k<=n-1} (1 - sin(j * Pi/(2 * n))^2     * cos(k * Pi/(2 * n))^2)     | 0 |

Square array

| Number | 式 | OFFSET (n,k) | 
| ----- | ----- | ----- |
| [A116469](https://oeis.org/A116469) | Prod_{a=1..n-1} * Prod_{b=1..k-1} (4 * sin(a * Pi/(2 * n))^2     + 4 * sin(b * Pi/(2 * k))^2)     | (1,1) |
| [A116469](https://oeis.org/A116469) | Prod_{a=1..n-1} * Prod_{b=1..k-1} (4 * cos(a * Pi/(2 * n))^2     + 4 * cos(b * Pi/(2 * k))^2)     | (1,1) |
| [A116469](https://oeis.org/A116469) | Prod_{a=1..n-1} * Prod_{b=1..k-1} (4 * sin(a * Pi/(2 * n))^2     + 4 * cos(b * Pi/(2 * k))^2)     | (1,1) |
| [A340475](https://oeis.org/A340475) | Prod_{a=1..n}   * Prod_{b=1..k}   (4 * sin(a * Pi/(2 * n + 1))^2 + 4 * sin(b * Pi/(2 * k + 1))^2) | (0,0) |
| [A187617](https://oeis.org/A187617) | Prod_{a=1..n}   * Prod_{b=1..k}   (4 * cos(a * Pi/(2 * n + 1))^2 + 4 * cos(b * Pi/(2 * k + 1))^2) | (0,0) |
| [A340476](https://oeis.org/A340476) | Prod_{a=1..n}   * Prod_{b=1..k}   (4 * sin(a * Pi/(2 * n + 1))^2 + 4 * cos(b * Pi/(2 * k + 1))^2) | (0,0) |

| Number | 式 | OFFSET (n,k) | 
| ----- | ----- | ----- |
| [A212796](https://oeis.org/A212796) | n * k * Prod_{a=1..n-1} * Prod_{b=1..k-1} (4 * sin(a * Pi/n)^2 + 4 * sin(b * Pi/k)^2)  | (1,1) |
| [A340560](https://oeis.org/A340560) |         Prod_{a=1..n-1} * Prod_{b=1..k-1} (4 * sin(a * Pi/n)^2 + 4 * sin(b * Pi/k)^2)  | (1,1) |
| [A340561](https://oeis.org/A340561) |    sqrt(Prod_{a=1..n-1} * Prod_{b=1..k-1} (4 * sin(a * Pi/n)^2 + 4 * cos(b * Pi/k)^2)) | (1,1) |

| Number | 式 | OFFSET (n,k) | 
| ----- | ----- | ----- |
| [A340427](https://oeis.org/A340427) | 4^(2 * (n-1) * (k-1)) * Prod_{a=1..n-1} Prod_{b=1..k-1} (1 - sin(a * Pi/(2 * n))^2     * sin(b * Pi/(2 * k))^2)     | (1,1) |
| [A340427](https://oeis.org/A340427) | 4^(2 * (n-1) * (k-1)) * Prod_{a=1..n-1} Prod_{b=1..k-1} (1 - cos(a * Pi/(2 * n))^2     * cos(b * Pi/(2 * k))^2)     | (1,1) |
| [A340427](https://oeis.org/A340427) | 4^(2 * (n-1) * (k-1)) * Prod_{a=1..n-1} Prod_{b=1..k-1} (1 - sin(a * Pi/(2 * n))^2     * cos(b * Pi/(2 * k))^2)     | (1,1) |
| [A340428](https://oeis.org/A340428) | 4^(2 * n * k)         * Prod_{a=1..n}   Prod_{b=1..k}   (1 - sin(a * Pi/(2 * n + 1))^2 * sin(b * Pi/(2 * k + 1))^2) | (0,0) |
| [A340430](https://oeis.org/A340430) | 4^(2 * n * k)         * Prod_{a=1..n}   Prod_{b=1..k}   (1 - sin(a * Pi/(2 * n + 1))^2 * sin(b * Pi/(2 * k + 1))^2) | (0,0) |
| [A340432](https://oeis.org/A340432) | 4^(2 * n * k)         * Prod_{a=1..n}   Prod_{b=1..k}   (1 - sin(a * Pi/(2 * n + 1))^2 * sin(b * Pi/(2 * k + 1))^2) | (0,0) |
