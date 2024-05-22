SELECT MAX(tyhjät_päivät) AS suurin_tyhjä_päivä
FROM (
    SELECT
        alku - (LAG(loppu) OVER (ORDER BY alku)) - 1 AS tyhjät_päivät
    FROM
        Varaukset
) AS päivät_ikkuna;
