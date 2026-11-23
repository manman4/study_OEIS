def f(n):
    coords = {(x, y) for x in range(n) for y in range(n) if x <= y}
    pieces = []
    for size in range(1, n+1):
        b0 = {(x, y) for x in range(size) for y in range(size) if x <= y}
        pieces += [{(x+ox, y+oy) for x, y in b0} for ox in range(n) for oy in range(n)]
    pieces = [p for p in pieces if p <= coords]
    pieces.sort(key=min)
    
    def recurse(grid, candidates, depth=1):
        if not grid: return 1
        if not candidates: return 0
        hd, tl = candidates[0], candidates[1:]
        if min(grid) != min(hd): return 0
        if hd <= grid: return recurse(grid - hd, [t for t in tl if not (hd & t)], depth+1) + recurse(grid, tl, depth+1)
        return recurse(grid, tl, depth+1)
    return recurse(coords, pieces)

for i in range(1, 11):
    print([i, f(i)])