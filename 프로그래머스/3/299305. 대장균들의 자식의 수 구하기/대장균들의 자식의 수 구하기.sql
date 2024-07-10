SELECT ECOLI_DATA.ID, COALESCE(A.PARENT_COUNT, 0) AS CHILD_COUNT
FROM ECOLI_DATA LEFT JOIN (
SELECT PARENT_ID, COUNT(*) AS PARENT_COUNT
FROM ECOLI_DATA
GROUP BY PARENT_ID
HAVING PARENT_ID IS NOT NULL) AS A
ON ECOLI_DATA.ID=A.PARENT_ID
ORDER BY ECOLI_DATA.ID;