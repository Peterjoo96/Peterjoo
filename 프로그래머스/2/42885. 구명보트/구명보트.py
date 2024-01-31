def solution (people,limit) :
    boat_list = []
    people.sort()

    # a = 가장 가벼운 사람
    # b = 가장 무거운 사람
    a = 0
    b = len(people) -1
    while a <= b:
    # 가장 가벼운 사람과 가장 무거운 사람의 무게가 최대중량보다 작거나 같다면
        if people[a] + people[b] <= limit: 
            boat_list.append([people[a],people[b]])
            # 담은 사람은 제외
            a+=1
            b-=1
    # 더 크다면 -> 무거운 사람이 1인 1보트
        else:
            boat_list.append(b)
            b-=1 # 담은 사람은 제외
    # 중간점에 있는 사람이 안보이는데 len으로 따지면 값이 나옴..머임..?
    answer = len(boat_list)
    return answer