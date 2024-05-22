SELECT nimi
FROM Tuotteet
WHERE hinta <= (SELECT MIN(hinta) * 2 FROM Tuotteet);
