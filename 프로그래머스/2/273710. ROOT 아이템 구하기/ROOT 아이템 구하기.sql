SELECT ITEM_TREE.ITEM_ID, ITEM_NAME
FROM ITEM_TREE JOIN ITEM_INFO
ON ITEM_TREE.ITEM_ID=ITEM_INFO.ITEM_ID
WHERE ITEM_TREE.PARENT_ITEM_ID IS NULL;