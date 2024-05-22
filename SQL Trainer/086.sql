SELECT
    p.nimi AS paketin_nimi,
    COUNT(s.tuote_id) AS tuotteiden_maara,
    COUNT(DISTINCT s.tuote_id) AS eri_tuotteiden_maara
FROM
    Paketit p
LEFT JOIN
    Sisallot s ON p.id = s.paketti_id
GROUP BY
    p.id, p.nimi;
