SELECT Opiskelijat.nimi AS opiskelijan_nimi, Suoritukset.arvosana
FROM Opiskelijat
JOIN Suoritukset ON Opiskelijat.id = Suoritukset.opiskelija_id
JOIN Kurssit ON Suoritukset.kurssi_id = Kurssit.id
WHERE Kurssit.nimi = 'Ohpe';
