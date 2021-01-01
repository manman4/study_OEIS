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

def A339190(n, k):
    universe = make_nXk_king_graph(n, k)
    GraphSet.set_universe(universe)
    cycles = GraphSet.cycles(is_hamilton=True)
    return cycles.len()

# n > 1
def A140519(n):
    return A339190(n, n)

print([A140519(n) for n in range(2, 8)])
