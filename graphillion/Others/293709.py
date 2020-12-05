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

def A293709(n):
    universe = make_n_triangular_grid_graph(n - 1)
    GraphSet.set_universe(universe)
    start, goal = 1, n * (n + 1) // 2
    paths = GraphSet.paths(start, goal, is_hamilton=True)
    return paths.len()

for i in range(2, 15):
    print(A293709(i))
