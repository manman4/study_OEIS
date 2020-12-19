# Using graphillion
from graphillion import GraphSet
import graphillion.tutorial as tl

# def make_PnXPk(n, k):
#     grids = []
#     for i in range(1, k + 1):
#         for j in range(1, n):
#             grids.append((i + (j - 1) * k, i + j * k))
#     for i in range(1, k * n, k):
#         for j in range(1, k):
#             grids.append((i + j - 1, i + j))
#     return grids

# def A(start, goal, n, k):
#     universe = make_PnXPk(n, k)
#     GraphSet.set_universe(universe)
#     paths = GraphSet.paths(start, goal)
#     return paths.len()

def A(start, goal, n, k):
    universe = tl.grid(n - 1, k - 1)
    GraphSet.set_universe(universe)
    paths = GraphSet.paths(start, goal)
    return paths.len()

def A288518(n, k):
    m = k * n
    s = 0
    for i in range(1, m):
        for j in range(i + 1, m + 1):
            s += A(i, j, n, k)
    return s

def A288516(n):
    return A288518(2, n)

print([A288516(n) for n in range(1, 11)])