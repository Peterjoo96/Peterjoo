def solution(phone_book):
    phone_set = set(phone_book)  # 중복 제거
    for number in phone_book:
        for i in range(1, len(number)):
            prefix = number[:i] # 접두사 추출
            if prefix in phone_set and prefix != number: # 다른 원소와 동일한지 검토
                return False
    return True