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

def A339762(n):
    return B(n, 4)

print([A339762(n) for n in range(1, 11)])

#################################################
#
# [1, 208, 4678, 171592, 4743130, 132202038, 3461461060, 88405359072, 2197293738684, 53565801482634, 1284136961473864, 30365618160010650, 709700882866473654, 16422374051280905778, 376744989106882359402, 8578133199326578887346, 194030408441913214687458]
#
#################################################