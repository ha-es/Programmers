-- 코드를 입력하세요
SELECT I.ANIMAL_ID, O.NAME
FROM ANIMAL_INS I
LEFT JOIN ANIMAL_OUTS  O
ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE O.DATETIME <  I.DATETIME
ORDER BY I.DATETIME ASC;