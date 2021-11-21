# Using graphillion
from graphillion import GraphSet

def make_quarter_Aztec_diamond(n):
    s = 1
    grids = []
    for i in range(n, 1, -1):
        for j in range(i - 1):
            a, b, c = s + j, s + j + 1, s + i + j
            grids.extend([(a, b), (a, c)])
        s += i
    grids.remove((n - 1, n))
    t_n = n * (n + 1) // 2
    grids.remove((t_n - 2, t_n))
    return grids

def A007726(n):
    if n < 3: return 1
    universe = make_quarter_Aztec_diamond(n)
    GraphSet.set_universe(universe)
    spanning_trees = GraphSet.trees(is_spanning=True)
    return spanning_trees.len()

for i in range(1, 15):
    print(A007726(i)) 