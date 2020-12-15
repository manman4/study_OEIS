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

def A(start, goal, n):
    universe = make_n_triangular_grid_graph(n - 1)
    GraphSet.set_universe(universe)
    paths = GraphSet.paths(start, goal, is_hamilton=True)
    return paths.len()

def A308144(n):
    m = n * (n + 1) // 2
    s = 0
    for i in range(1, m):
        for j in range(i + 1, m + 1):
            s += A(i, j, n)
    return s

for i in range(2, 15):
    print(A308144(i))