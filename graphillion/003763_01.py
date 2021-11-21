# Using graphillion
from graphillion import GraphSet

def make_PnXPk(n, k):
    grids = []
    for i in range(1, k + 1):
        for j in range(1, n):
            grids.append((i + (j - 1) * k, i + j * k))
    for i in range(1, k * n, k):
        for j in range(1, k):
            grids.append((i + j - 1, i + j))
    return grids

def A(n):
    universe = make_PnXPk(n, n)
    GraphSet.set_universe(universe)
    cycles = GraphSet.cycles(is_hamilton=True)
    return cycles.len()

print([A(2 * n) for n in range(1, 5)])