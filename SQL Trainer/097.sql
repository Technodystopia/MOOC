WITH NumberedPlayers AS (
    SELECT *, ROW_NUMBER() OVER (ORDER BY nimi) AS rownum
    FROM Pelaajat
)
SELECT 
    nimi,
    CASE 
        WHEN rownum % 2 = 0 THEN 'Kilit' 
        ELSE 'Puput' 
    END AS joukkue
FROM NumberedPlayers;
