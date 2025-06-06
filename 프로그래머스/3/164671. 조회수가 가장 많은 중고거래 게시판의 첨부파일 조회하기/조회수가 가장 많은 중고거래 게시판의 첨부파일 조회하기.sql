-- 코드를 입력하세요
-- /home/grep/src/게시물ID/파일이름/파일확장자
SELECT CONCAT('/home/grep/src/',B.BOARD_ID,'/',F.FILE_ID,F.FILE_NAME,F.FILE_EXT) AS FILE_PATH
FROM USED_GOODS_BOARD B
LEFT JOIN USED_GOODS_FILE F
ON B.BOARD_ID = F.BOARD_ID
WHERE B.VIEWS IN (
        SELECT MAX(VIEWS)
        FROM USED_GOODS_BOARD)
ORDER BY F.FILE_ID DESC;
