# domino

ダイマー模型に関して(予想も含む)

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
| [A340139](https://oeis.org/A340139) | 4^((n-2) * (n-1)) * Prod_{1<=j<k<=n-1} (1 - sin(j * Pi/(2 * n))^2     * sin(k * Pi/(2 * n))^2)     | 1 |
| [A340139](https://oeis.org/A340139) | 4^((n-2) * (n-1)) * Prod_{1<=j<k<=n-1} (1 - cos(j * Pi/(2 * n))^2     * cos(k * Pi/(2 * n))^2)     | 1 |
| [A340166](https://oeis.org/A340166) | 4^(2 * (n-1)^2)   * Prod_{1<=j,k<=n-1} (1 - sin(j * Pi/(2 * n))^2     * sin(k * Pi/(2 * n))^2)     | 1 |
| [A340166](https://oeis.org/A340166) | 4^(2 * (n-1)^2)   * Prod_{1<=j,k<=n-1} (1 - cos(j * Pi/(2 * n))^2     * cos(k * Pi/(2 * n))^2)     | 1 |
| [A340166](https://oeis.org/A340166) | 4^(2 * (n-1)^2)   * Prod_{1<=j,k<=n-1} (1 - sin(j * Pi/(2 * n))^2     * cos(k * Pi/(2 * n))^2)     | 1 |
| [A340293](https://oeis.org/A340293) | 4^((n-1) * n)     * Prod_{1<=j<k<=n}   (1 - sin(j * Pi/(2 * n + 1))^2 * sin(k * Pi/(2 * n + 1))^2) | 0 |
| [A340185](https://oeis.org/A340185) | 4^((n-1) * n)     * Prod_{1<=j<k<=n}   (1 - cos(j * Pi/(2 * n + 1))^2 * cos(k * Pi/(2 * n + 1))^2) | 0 |
| [A340292](https://oeis.org/A340292) | 4^(2 * n^2)       * Prod_{1<=j,k<=n}   (1 - sin(j * Pi/(2 * n + 1))^2 * sin(k * Pi/(2 * n + 1))^2) | 0 |
| [A340291](https://oeis.org/A340291) | 4^(2 * n^2)       * Prod_{1<=j,k<=n}   (1 - cos(j * Pi/(2 * n + 1))^2 * cos(k * Pi/(2 * n + 1))^2) | 0 |
| [A340295](https://oeis.org/A340295) | 4^(2 * n^2)       * Prod_{1<=j,k<=n}   (1 - sin(j * Pi/(2 * n + 1))^2 * cos(k * Pi/(2 * n + 1))^2) | 0 |

その他

| Number | 式 | OFFSET | 
| ----- | ----- | ----- |
| [A340176](https://oeis.org/A340176) | 4^((n-1)^2)       * Prod_{1<=j<k<=n-1} (1 - sin(j * Pi/(2 * n))^2     * sin(k * Pi/(2 * n))^2)     | 0 |
| [A340176](https://oeis.org/A340176) | 4^((n-1)^2)       * Prod_{1<=j<k<=n-1} (1 - cos(j * Pi/(2 * n))^2     * cos(k * Pi/(2 * n))^2)     | 0 |
