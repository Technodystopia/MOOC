SELECT Kaupungit1.nimi AS Lahtokaupunki, Kaupungit2.nimi AS Kohdekaupunki
FROM Lennot
JOIN Kaupungit AS Kaupungit1 ON Lennot.mista_id = Kaupungit1.id
JOIN Kaupungit AS Kaupungit2 ON Lennot.minne_id = Kaupungit2.id;
