SELECT Pelaajat.nimi, MAX(Tulokset.tulos) AS paras_tulos
FROM Pelaajat
JOIN Tulokset ON Pelaajat.id = Tulokset.pelaaja_id
GROUP BY Pelaajat.nimi;
