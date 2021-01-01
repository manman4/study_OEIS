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

def A339098(n, k):
    universe = make_nXk_king_graph(n, k)
    GraphSet.set_universe(universe)
    cycles = GraphSet.cycles()
    return cycles.len()

print([A339098(j + 2, i - j + 2) for i in range(9 - 1) for j in range(i + 1)])