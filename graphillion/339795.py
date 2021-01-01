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

def A339795(n):
    return B(n, 3)

print([A339795(n) for n in range(3, 10)])

############################################################
#
# [4536, 41676, 324570, 2298906, 15340836, 98401032, 614180286, 3759485910, 22684148388, 135385868268, 801141412422, 4708188092034, 27512477620020, 160001531341584, 926684449543278, 5347897587948078, 30765345147232932, 176489253686952180, 1009897820473377654]
#
############################################################