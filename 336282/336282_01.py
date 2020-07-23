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

e_list = [{"[2]": EquivalenceClass([0], 1)}]

def A(n):
    if n < 2:
        return 1
    e_list.append({})
    for key in e_list[n - 2]:
        seq = e_list[n - 2][key].example
        for j in range(n - 1, 0, -1):
            p = seq[0:j] + [n - 1] + seq[j:]
            res = extendedSig(p, key, n)
            if not res:
                break
            s = str(res)
            c = e_list[n - 2][key].count
            el = e_list[n - 1]
            if s in el:
                el[s].count += c
            else:
                el[s] = EquivalenceClass(p, c)
                
    return sum(e_list[n - 1][key].count for key in e_list[n - 1])

def A336282List(size): 
    return [A(k) for k in range(size)]

print(A336282List(12))
