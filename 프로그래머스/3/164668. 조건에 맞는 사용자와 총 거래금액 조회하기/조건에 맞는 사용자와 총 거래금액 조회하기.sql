-- USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 
-- 완료된 중고 거래의 총금액이 70만 원 이상인 사람의
-- 회원 ID, 닉네임, 총거래금액을 조회
-- 결과는 총거래금액을 기준으로 오름차순 정렬

SELECT  U.USER_ID, 
        U.NICKNAME,
        B.TOTAL_SALES
FROM USED_GOODS_USER U JOIN (SELECT WRITER_ID AS USER_ID, SUM(PRICE) AS TOTAL_SALES
                             FROM USED_GOODS_BOARD
                             WHERE STATUS = 'DONE'
                             GROUP BY WRITER_ID
                             ) B
    ON
    B.USER_ID = U.USER_ID
WHERE B.TOTAL_SALES >= '700000'
ORDER BY B.TOTAL_SALES
;


