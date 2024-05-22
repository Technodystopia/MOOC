SELECT Pelaajat.nimi, COUNT(Tulokset.id) AS tulosten_maara
FROM Pelaajat
JOIN Tulokset ON Pelaajat.id = Tulokset.pelaaja_id
GROUP BY Pelaajat.nimi;
