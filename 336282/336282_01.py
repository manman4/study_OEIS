class EquivalenceClass:
    def __init__(self, example, count):
        self.example = example
        self.count = count

def extendedSig(seq, key, n):
    key = eval(key)
    top = seq.index(n - 1)
    attachement = top - 1
    for i in range(attachement, -1, -1):
        if key[i] > 0:
            key[i] -= 1
            key.insert(top, 2)
            return key

e_list = [{"[2]": EquivalenceClass([0], 1)}, {}]

def A(n):
    if n < 2:
        return 1
    el_0 = e_list[0]
    el = e_list[1]
    for key in el_0:
        seq = el_0[key].example
        for j in range(n - 1, 0, -1):
            p = seq[0:j] + [n - 1] + seq[j:]
            res = extendedSig(p, key, n)
            if not res:
                break
            s = str(res)
            c = el_0[key].count
            if s in el:
                el[s].count += c
            else:
                el[s] = EquivalenceClass(p, c)

    e_list[0] = el
    e_list[1] = {}
    return sum(el[key].count for key in el)

def A336282List(size):
    return [A(k) for k in range(size)]

print(A336282List(12))


