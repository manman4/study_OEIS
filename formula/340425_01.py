# Using graphillion
from graphillion import GraphSet

def make_AD_nk(n, k):
    k += 1
    grids = []
    s = k * (n + 1)
    for i in range(1, k * n, k):
        for j in range(1, k):
            a, b = i + j - 1, i + j
            c = s + a
            grids.extend([(c - k, a), (c - k, b)])
            grids.extend([(c, a), (c, b)])
    return grids

def A(n, k):
    universe = make_AD_nk(n, k)
    GraphSet.set_universe(universe)
    spanning_trees = GraphSet.trees(is_spanning=True)
    return spanning_trees.len()

# t(OD_nk) = t(AD_nk)/4
print([A(j + 1, i - j + 1) // 4 for i in range(7) for j in range(i + 1)])
