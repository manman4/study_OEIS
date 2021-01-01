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

def A174579(n):
    if n == 0: return 1
    universe = make_n_triangular_grid_graph(n)
    GraphSet.set_universe(universe)
    spanning_trees = GraphSet.trees(is_spanning=True)
    return spanning_trees.len()

print([A174579(n) for n in range(8)])
