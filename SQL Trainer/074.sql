SELECT 
    Opiskelijat.nimi,
    COUNT(DISTINCT CASE WHEN Lahetykset.tila = 1 THEN Lahetykset.tehtava_id END) AS oikein_ratkaistut_tehtavat
FROM 
    Opiskelijat
LEFT JOIN 
    Lahetykset ON Opiskelijat.id = Lahetykset.opiskelija_id
GROUP BY 
    Opiskelijat.id, Opiskelijat.nimi;
