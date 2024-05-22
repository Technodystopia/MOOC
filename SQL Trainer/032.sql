SELECT Opiskelijat.nimi AS Opiskelija, MAX(Suoritukset.arvosana) AS ParasArvosana
FROM Opiskelijat
JOIN Suoritukset ON Opiskelijat.id = Suoritukset.opiskelija_id
GROUP BY Opiskelijat.id, Opiskelijat.nimi;
