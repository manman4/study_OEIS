# Using graphillion
from graphillion import GraphSet

def make_nXk_king_graph(n, k):
    grids = []
    for i in range(1, k + 1):
        for j in range(1, n):
            grids.append((i + (j - 1) * k, i + j * k))
            if i < k:
                grids.append((i + (j - 1) * k, i + j * k + 1))
            if i > 1:
                grids.append((i + (j - 1) * k, i + j * k - 1))
    for i in range(1, k * n, k):
        for j in range(1, k):
            grids.append((i + j - 1, i + j))
    return grids

def A(start, goal, n, k):
    universe = make_nXk_king_graph(n, k)
    GraphSet.set_universe(universe)
    paths = GraphSet.paths(start, goal, is_hamilton=True)
    return paths.len()

def B(n, k):
    m = k * n
    s = 0
    for i in range(1, m):
        for j in range(i + 1, m + 1):
            s += A(i, j, n, k)
    return s

def A339763(n):
    return B(n, 5)

print([A339763(n) for n in range(1, 11)])

################################################
#
# [1, 768, 43676, 4743130, 364618672, 28808442502, 2125185542510, 153198148096800, 10739936528121270, 738599412949227054, 49945111084852186032, 3331294312194018084810, 219599512046978073473186, 14331641424452867055092544, 927231520831830806024847178]
#
################################################