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

def A339761(n):
    return B(n, 3)

print([A339761(n) for n in range(1, 11)])

###################################################
#
# [1, 48, 392, 4678, 43676, 406396, 3568906, 30554390, 254834078, 2085479610, 16791859330, 133416458104, 1048095087616, 8154539310958, 62918331433308, 481954854686434, 3668399080453520, 27766093432542984, 209120844634276158, 1568050593805721822]
#
###################################################