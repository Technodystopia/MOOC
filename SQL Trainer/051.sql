SELECT nimi
FROM Tuotteet
WHERE hinta = (SELECT MIN(hinta) FROM Tuotteet);
