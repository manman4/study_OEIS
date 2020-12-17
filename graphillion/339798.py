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

def A339798(n):
    return B(n, 4)

print([A339798(n) for n in range(3, 10)])

############################################################
#
# [4128, 45696, 287160, 2172480, 11866848, 76468352, 390714840, 2301083680, 11288784144, 62812654272, 299720429528, 1604776566400, 7505573487360, 39105991164160, 180179056818584, 920223907284960, 4191443432295472, 21088555826121280, 95195388883597464, 473503955161244480]
#
############################################################