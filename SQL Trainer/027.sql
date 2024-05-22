SELECT Opiskelijat.nimi AS opiskelija_nimi, Kurssit.nimi AS kurssin_nimi, Suoritukset.arvosana
FROM Opiskelijat
JOIN Suoritukset ON Opiskelijat.id = Suoritukset.opiskelija_id
JOIN Kurssit ON Suoritukset.kurssi_id = Kurssit.id;
