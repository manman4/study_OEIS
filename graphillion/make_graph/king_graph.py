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

king_graph_3X2 = make_nXk_king_graph(3, 2)
print(len(king_graph_3X2))
print(king_graph_3X2)

king_graph_2X3 = make_nXk_king_graph(2, 3)
print(len(king_graph_2X3))
print(king_graph_2X3)

############################################################################################
#
#  1-2
#  |X|
#  3-4
#  |X|
#  5-6
#
#  11
#  [(1, 3), (1, 4), (3, 5), (3, 6), (2, 4), (2, 3), (4, 6), (4, 5), (1, 2), (3, 4), (5, 6)]
#
#  1-2-3
#  |X|X|
#  4-5-6
#
#  11
#  [(1, 4), (1, 5), (2, 5), (2, 6), (2, 4), (3, 6), (3, 5), (1, 2), (2, 3), (4, 5), (5, 6)]
#
############################################################################################
