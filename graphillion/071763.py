# Using graphillion
from graphillion import GraphSet

def make_nXnXn_grid_graph(n):
    grids = []
    for x in range(0, n):
        y = x * n * n
        for i in range(1, n + 1):
            for j in range(1, n + 1):
                if x < n - 1:
                    grids.append((y + i + (j - 1) * n, y + i + (j - 1) * n + n * n))
                if j < n:
                    grids.append((y + i + (j - 1) * n, y + i + j * n))
        for i in range(1, n * n, n):
            for j in range(1, n):
                grids.append((y + i + j - 1, y + i + j))
    return grids

def A071763(n):
    universe = make_nXnXn_grid_graph(n)
    GraphSet.set_universe(universe)
    spanning_trees = GraphSet.trees(is_spanning=True)
    return spanning_trees.len()

for i in range(2, 4):
    print(A071763(i))