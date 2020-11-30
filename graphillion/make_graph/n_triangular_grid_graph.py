def make_n_triangular_grid_graph(n):
    s = 1
    grids = []
    for i in range(n + 1, 1, -1):
        for j in range(i - 1):
            a, b, c = s + j, s + j + 1, s + i + j
            grids.extend([(a, b), (a, c), (b, c)])
        s += i
    return grids

n_triangular_grid_graph = make_n_triangular_grid_graph(2)
print(len(n_triangular_grid_graph))
print(n_triangular_grid_graph)
