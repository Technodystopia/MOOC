SELECT nimi
FROM Elokuvat
WHERE vuosi % 4 = 0 AND (vuosi % 100 != 0 OR vuosi % 400 = 0);
