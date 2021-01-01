# Using graphillion
from graphillion import GraphSet

def make_HOD(n):
    s = 1
    grids = []
    for i in range(2 * n + 1, 1, -2):
        for j in range(i - 2):
            a, b, c = s + j, s + j + 1, s + i + j
            grids.extend([(a, b), (b, c)])
        grids.append((s + i - 2, s + i - 1))
        s += i
    return grids

def A340185(n):
    if n == 0: return 1
    universe = make_HOD(n)
    GraphSet.set_universe(universe)
    spanning_trees = GraphSet.trees(is_spanning=True)
    return spanning_trees.len()

print([A340185(n) for n in range(7)])