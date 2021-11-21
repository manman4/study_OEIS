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
    paths = GraphSet.paths(start, goal)
    return paths.len()

def B(n, k):
    m = k * n
    s = 0
    for i in range(1, m):
        for j in range(i + 1, m + 1):
            s += A(i, j, n, k)
    return s

def A339796(n):
    return B(n, 4)

print([A339796(n) for n in range(3, 10)])

############################################################
#
# [41676, 725408, 10489660, 136547568, 1660652028, 19269238080, 216100013292, 2362533383920, 25329574375116, 267467192029728, 2790488055689724, 28832824624840880, 295579830237167580, 3010545385659678848, 30497626012737910348, 307541698683047474544]
#
############################################################