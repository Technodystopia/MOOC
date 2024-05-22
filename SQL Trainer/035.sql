SELECT Pelaajat.nimi AS Pelaaja, COALESCE(COUNT(Tulokset.id), 0) AS TulostenMaara
FROM Pelaajat
LEFT JOIN Tulokset ON Pelaajat.id = Tulokset.pelaaja_id
GROUP BY Pelaajat.id, Pelaajat.nimi;
