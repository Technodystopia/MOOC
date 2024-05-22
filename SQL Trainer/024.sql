SELECT Pelaajat.nimi, Tulokset.tulos
FROM Pelaajat
JOIN Tulokset ON Pelaajat.id = Tulokset.pelaaja_id
ORDER BY Tulokset.tulos DESC, Pelaajat.nimi;
