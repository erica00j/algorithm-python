SELECT USED_GOODS_USER.USER_ID, USED_GOODS_USER.NICKNAME, B.SUM AS TOTAL_SALES
FROM USED_GOODS_USER JOIN (
    SELECT WRITER_ID, SUM(PRICE) AS SUM
    FROM (
        SELECT WRITER_ID, PRICE
        FROM USED_GOODS_BOARD
        WHERE STATUS='DONE') AS A
    GROUP BY WRITER_ID
    HAVING SUM >= 700000) AS B
ON USED_GOODS_USER.USER_ID=B.WRITER_ID
ORDER BY TOTAL_SALES ASC;