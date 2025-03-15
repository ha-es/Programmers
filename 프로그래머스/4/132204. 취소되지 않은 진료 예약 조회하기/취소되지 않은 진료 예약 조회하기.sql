-- 코드를 입력하세요
SELECT A.APNT_NO, P.PT_NAME, P.PT_NO, A.MCDP_CD, D.DR_NAME,A.APNT_YMD
FROM APPOINTMENT A
LEFT JOIN PATIENT P
ON A.PT_NO = P.PT_NO
LEFT JOIN  DOCTOR D
ON A.MDDR_ID = D.DR_ID
WHERE A.MCDP_CD LIKE 'CS' AND A.APNT_CNCL_YN LIKE 'N' AND A.APNT_YMD LIKE '2022-04-13%'
ORDER BY A.APNT_YMD ASC;

