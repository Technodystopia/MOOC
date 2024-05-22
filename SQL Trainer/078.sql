SELECT tulos
FROM (
    SELECT tulos, ROW_NUMBER() OVER (ORDER BY tulos) AS rivi_numero, COUNT(*) OVER () AS total
    FROM Tulokset
) AS jarkatut
WHERE rivi_numero = (total + 1) / 2 OR (total % 2 = 0 AND rivi_numero = total / 2);
