# Using graphillion
from graphillion import GraphSet

def make_n_triangular_grid_graph(n):
    s = 1
    grids = []
    for i in range(n + 1, 1, -1):
        for j in range(i - 1):
            a, b, c = s + j, s + j + 1, s + i + j
            grids.extend([(a, b), (a, c), (b, c)])
        s += i
    return grids

def A266513(n):
    if n == 1: return 0
    universe = make_n_triangular_grid_graph(n - 1)
    GraphSet.set_universe(universe)
    cycles = GraphSet.cycles()
    return cycles.len()

print([A266513(n) for n in range(1, 12)])
