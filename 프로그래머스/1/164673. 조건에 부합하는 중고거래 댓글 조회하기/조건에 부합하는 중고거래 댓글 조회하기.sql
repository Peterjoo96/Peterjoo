-- USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 
-- 2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일
-- 댓글 작성일을 기준으로 오름차순 정렬
-- 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬
SELECT  B1.TITLE, 
        B1.BOARD_ID, 
        R1.REPLY_ID, 
        R1.WRITER_ID, 
        R1.CONTENTS, 
        TO_CHAR(R1.CREATED_DATE, 'YYYY-MM-DD') AS CREATED_DATE
FROM USED_GOODS_BOARD B1, USED_GOODS_REPLY R1
WHERE   TO_CHAR(B1.CREATED_DATE, 'YYYY-MM') = '2022-10'
        AND B1.BOARD_ID = R1.BOARD_ID
ORDER BY CREATED_DATE, B1.TITLE;