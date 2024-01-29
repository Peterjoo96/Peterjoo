def solution(n, lost, reserve):
    a = set(reserve) - set(lost)
    b = set(lost) - set(reserve)
    for i in a:
        if b == None:
            return n
        if i-1 in b:
            b.remove(i-1)
        elif i+1 in b:
            b.remove(i+1)

    answer = n - len(b)

    return answer