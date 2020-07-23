class EquivalenceClass:
    def __init__(self, example, count):
        self.example = example
        self.count = count

def extendedSig(seq, key, n):
    key = eval(key)
    top = seq.index(n-1)
    attachement = top - 1
    for i in range(attachement, -1, -1):
        if key[i] > 0:
            key[i] -= 1
            key.insert(top, 2)
            return key

e_list = [{'[2]' : EquivalenceClass([0], 1)}]

def A336282(n):
    if n < 2:
        return 1
    e_list.append({})
    for key in e_list[n-2]:
        seq = e_list[n-2][key].example
        for j in range(n-1, 0, -1):
            p = seq[0:j] + [n-1] + seq[j:]
            res = extendedSig(p, key, n)
            if res:
                s = str(res)
                if s in e_list[n-1]:
                    e_list[n-1][s].count += e_list[n-2][key].count
                else:
                    e_list[n-1][s] = EquivalenceClass(p, e_list[n-2][key].count)
            else:
                break
    sum = 0
    for key in e_list[n-1]:
        sum += e_list[n-1][key].count
    return sum

for n in range(26):
    print([n, A336282(n)])
