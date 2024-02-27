-- 상반기 아이스크림 총주문량이 3,000보다 높으면서
-- 아이스크림의 주 성분이 과일인 
-- 아이스크림의 맛을 총주문량이 큰 순서대로(내림차순) 조회

SELECT II.FLAVOR
FROM ICECREAM_INFO II, FIRST_HALF FH
WHERE II.FLAVOR = FH.FLAVOR 
        AND TOTAL_ORDER > 3000 
        AND INGREDIENT_TYPE = 'fruit_based'
ORDER BY TOTAL_ORDER DESC;