SELECT 
    Opiskelijat.nimi,
    COALESCE(MAX(subquery.lahetyksien_maara), 0) AS enimmillaan_lahetyksia_tehtavaan
FROM 
    Opiskelijat
LEFT JOIN (
    SELECT 
        opiskelija_id,
        tehtava_id,
        COUNT(*) AS lahetyksien_maara
    FROM 
        Lahetykset
    GROUP BY 
        opiskelija_id, tehtava_id
) AS subquery ON Opiskelijat.id = subquery.opiskelija_id
GROUP BY 
    Opiskelijat.id, Opiskelijat.nimi;
