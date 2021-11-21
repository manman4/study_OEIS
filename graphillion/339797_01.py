# Using graphillion
from graphillion import GraphSet

def make_CnXCk(n, k):
    grids = []
    for i in range(1, k + 1):
        for j in range(1, n):
            grids.append((i + (j - 1) * k, i + j * k))
        grids.append((i + (n - 1) * k, i))
    for i in range(1, k * n, k):
        for j in range(1, k):
            grids.append((i + j - 1, i + j))
        grids.append((i + k - 1, i))
    return grids

def A(start, goal, n, k):
    universe = make_CnXCk(n, k)
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

def A339797(n):
    return B(n, 3)

print([A339797(n) for n in range(3, 10)])

############################################################
#
# [756, 4128, 18240, 73368, 277536, 1001760, 3512160, 12009480, 40390944, 133893936, 439304736, 1428450072, 4613176800, 14809528896, 47315578848, 150534443304, 477237381024, 1508232832080, 4753573999776, 14945425070136, 46886868887136, 146802927436128, 458818252975200]
#
############################################################