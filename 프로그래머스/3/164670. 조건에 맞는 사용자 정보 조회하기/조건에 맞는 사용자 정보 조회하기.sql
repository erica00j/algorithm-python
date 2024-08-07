SELECT USER_ID, NICKNAME, CONCAT(CITY, ' ', STREET_ADDRESS1, ' ',STREET_ADDRESS2) AS 전체주소, INSERT(INSERT(TLNO, 8, 0, '-'), 4, 0, '-') AS 전화번호
FROM USED_GOODS_USER JOIN(
    SELECT WRITER_ID, COUNT(*) AS COUNT
    FROM USED_GOODS_BOARD
    GROUP BY WRITER_ID) AS A
ON USED_GOODS_USER.USER_ID=A.WRITER_ID
WHERE COUNT>=3
ORDER BY USER_ID DESC;