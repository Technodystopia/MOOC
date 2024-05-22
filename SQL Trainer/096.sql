SELECT 
    nimi,
    CASE
        WHEN ROW_NUMBER() OVER (ORDER BY nimi) % 2 = 1 THEN 1
        ELSE 2
    END AS joukkue
FROM Pelaajat
ORDER BY joukkue, nimi;
