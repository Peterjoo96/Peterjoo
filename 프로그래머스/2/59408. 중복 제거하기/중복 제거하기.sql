-- 동물 보호소에 들어온 동물의
-- 이름은 몇 개인지 조회
-- 이때 이름이 NULL인 경우는 집계하지 않으며
-- (DISTINCT)중복되는 이름은 하나로 칩니다.

SELECT  SUM(COUNT(DISTINCT NAME))
FROM ANIMAL_INS 
WHERE NAME IS NOT NULL
GROUP BY NAME