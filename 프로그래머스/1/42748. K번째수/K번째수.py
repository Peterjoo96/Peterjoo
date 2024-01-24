def solution(array, commands):
    # 결과를 담을 빈 리스트 생성
    answer = []
    # 이중리스트인 commands에서 i, j, k를 꺼내옴
    for i, j, k in commands:
				# 실제 값과 상이한 i k 값에 유의하여 작성
        command_arr = array[i-1:j]
				# 정렬
        sorted_arr = sorted(command_arr)
				# 정렬된 리스트에서 K번째 값 구하기
        result = sorted_arr[k-1]
				# 구한 값을 answer리스트에 append
        answer.append(result)
        
    return answer # 모인 k번째 값을 출력