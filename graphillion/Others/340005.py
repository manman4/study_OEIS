# Using graphillion
from graphillion import GraphSet

def make_stairs(n):
    s = 1
    grids = []
    for i in range(n + 1, 1, -1):
        for j in range(i - 1):
            a, b, c = s + j, s + j + 1, s + i + j
            grids.extend([(a, b), (a, c)])
        s += i
    return grids

def A340005(n):
    if n == 0: return 1
    universe = make_stairs(n)
    GraphSet.set_universe(universe)
    start, goal = n + 1, (n + 1) * (n + 2) // 2
    paths = GraphSet.paths(start, goal)
    return paths.len()

print([A340005(n) for n in range(18)])

##################################################
#
# [1, 1, 2, 7, 40, 369, 5680, 150707, 6993712, 567670347, 80294818098, 19750798800833, 8447500756620198, 6286515496550185699, 8145835634791919637646, 18387066260739625200447575, 72319765957232441125506763756, 495718308213370458738098777141317]
#
##################################################