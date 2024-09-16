SELECT * FROM educativo.nivel_educativo;

USE educativo;
SELECT count(*) from nivel_educativo;

SELECT sex, COUNT(*) as cantidad
FROM nivel_educativo
GROUP BY sex;

SELECT nivel_edu, count(*) as cantidad
FROM nivel_educativo
group by nivel_edu;

SELECT
    CASE
        WHEN edad BETWEEN 0 AND 12 THEN '0-12 años'
        WHEN edad BETWEEN 13 AND 19 THEN '13-19 años'
        WHEN edad BETWEEN 20 AND 34 THEN '20-34 años'
        WHEN edad BETWEEN 35 AND 49 THEN '35-49 años'
        WHEN edad BETWEEN 50 AND 64 THEN '50-64 años'
        WHEN edad >= 65 THEN '65 años y más'
        ELSE 'Edad no especificada'
    END AS rango_etario,
    COUNT(*) AS cantidad
FROM nivel_educativo
GROUP BY rango_etario
ORDER BY MIN(edad);

SELECT anios_esc, count(*) as cantidad
FROM nivel_educativo
group by anios_esc;


USE educativo;
    SELECT
        nivel_edu,
        sex,
        COUNT(*) AS cantidad
    FROM nivel_educativo
    GROUP BY nivel_edu, sex
