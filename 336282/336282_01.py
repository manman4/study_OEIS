class EquivalenceClass:
    def __init__(self, example, count):
        self.example = example
        self.count = count

def extendedSig(seq, key, n):
    # keyをlistへ
    key = eval(key)
    top = seq.index(n - 1)
    attachement = top - 1
    for i in range(attachement, -1, -1):
        if key[i] > 0:
            key[i] -= 1
            key.insert(top, 2)
            return key

# listをkeyにできない
e_list = [{"[2]": EquivalenceClass([0], 1)}]

def A(n):
    if n < 2:
        return 1
    e_list.append({})
    dic = e_list[n - 2]
    el = e_list[n - 1]
    for key in dic:
        print([n, key, dic[key].example, dic[key].count])
        seq = dic[key].example
        for j in range(n - 1, 0, -1):
            p = seq[0:j] + [n - 1] + seq[j:]
            res = extendedSig(p, key, n)
            if not res:
                break
            s = str(res)
            c = dic[key].count
            if s in el:
                el[s].count += c
            else:
                el[s] = EquivalenceClass(p, c)

    return sum(el[key].count for key in el)

for k in range(6):
    print(A(k))
