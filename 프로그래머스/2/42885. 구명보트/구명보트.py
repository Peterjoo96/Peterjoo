def solution (people,limit):
    boat_list = []
    people.sort()
    left, right = 0, len(people) - 1

    while left <= right:
        if people[left] + people[right] <= limit:
            boat_list.append([people[left], people[right]])
            left += 1
            right -= 1
        else:
            boat_list.append([people[right]])
            right -= 1
    boat = len(boat_list)
    return boat