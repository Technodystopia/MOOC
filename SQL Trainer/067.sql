SELECT nimi, hinta
FROM Tuotteet
WHERE hinta = (
    SELECT MIN(hinta) FROM Tuotteet
)
ORDER BY nimi
LIMIT 1;
