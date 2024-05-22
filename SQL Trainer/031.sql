SELECT Opiskelijat.nimi AS Opiskelija, COUNT(Suoritukset.opiskelija_id) AS SuoritustenMaara
FROM Opiskelijat
JOIN Suoritukset ON Opiskelijat.id = Suoritukset.opiskelija_id
GROUP BY Opiskelijat.id, Opiskelijat.nimi;
