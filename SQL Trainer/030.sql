SELECT Opiskelijat.nimi AS Opiskelija, Kurssit.nimi AS Kurssi, Suoritukset.arvosana
FROM Opiskelijat
JOIN Suoritukset ON Opiskelijat.id = Suoritukset.opiskelija_id
JOIN Kurssit ON Suoritukset.kurssi_id = Kurssit.id
WHERE Suoritukset.arvosana IN (4, 5);
