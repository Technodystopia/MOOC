SELECT
    t.nimi AS tuotteen_nimi,
    COUNT(DISTINCT s.paketti_id) AS esiintymiskerrat
FROM
    Tuotteet t
LEFT JOIN
    Sisallot s ON t.id = s.tuote_id
GROUP BY
    t.id, t.nimi;
