-- USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 
-- 2022년 10월에 작성된 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일
-- 댓글 작성일을 기준으로 오름차순 정렬
-- 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬
SELECT B.TITLE
,      B.BOARD_ID
,      R.REPLY_ID
,      R.WRITER_ID
,      R.CONTENTS
,      TO_CHAR(R.CREATED_DATE, 'YYYY-MM-DD') AS CREATED_DATE
FROM USED_GOODS_BOARD B
,    USED_GOODS_REPLY R
WHERE TO_CHAR(B.CREATED_DATE, 'YYYY-MM') = '2022-10'
AND B.BOARD_ID = R.BOARD_ID
ORDER BY R.CREATED_DATE, B.TITLE;