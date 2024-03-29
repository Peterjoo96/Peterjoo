-- 2022년 1월의 도서 판매 데이터를 기준으로 
-- 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여,
-- 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력
-- 결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬

-- 삼중 JOIN

-- BOOK_SALES JOIN 에서 22년 1월 도서 판매 데이터 선택
/*
SELECT *
FROM BOOK_SALES 
WHERE TO_CHAR(SALES_DATE, 'YYYY-MM-DD') LIKE '2022-01%'
*/

-- BOOK_SALES과 Join할 테이블 수배
-- book_id 컬럼을 공통으로 가지는 테이블 = BOOK
-- JOIN 수행
-- 이후 AUTHOR테이블과 AUTHOR_ID를 기준으로 JOIN

SELECT  B3.AUTHOR_ID,
        B3.AUTHOR_NAME,
        B1.CATEGORY,
        SUM(B1.PRICE * B2.SALES) AS TOTAL_SALES
FROM BOOK B1 
JOIN (
    SELECT BOOK_ID, SALES
    FROM BOOK_SALES 
    WHERE TO_CHAR(SALES_DATE, 'YYYY-MM-DD') LIKE '2022-01%'
) B2 ON B1.BOOK_ID = B2.BOOK_ID
JOIN AUTHOR B3 ON B1.AUTHOR_ID = B3.AUTHOR_ID
GROUP BY B3.AUTHOR_ID, B3.AUTHOR_NAME, B1.CATEGORY
ORDER BY B3.AUTHOR_ID, B1.CATEGORY DESC;