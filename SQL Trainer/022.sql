SELECT Pelaajat.nimi, Tulokset.tulos
FROM Pelaajat
JOIN Tulokset ON Pelaajat.id = Tulokset.pelaaja_id
WHERE Pelaajat.nimi = 'Uolevi';
