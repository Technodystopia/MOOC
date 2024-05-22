SELECT Kaupungit.nimi AS Kohdekaupunki
FROM Lennot
JOIN Kaupungit ON Lennot.minne_id = Kaupungit.id
WHERE Lennot.mista_id = 1;
