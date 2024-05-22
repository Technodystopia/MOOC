SELECT
    t.nimi AS tuotteen_nimi,
    COALESCE(MAX(esiintymiskerrat), 0) AS enimmäiskerrat_paketissa
FROM
    Tuotteet t
LEFT JOIN (
    SELECT
        tuote_id,
        COUNT(paketti_id) AS esiintymiskerrat
    FROM
        Sisallot
    GROUP BY
        tuote_id, paketti_id
) s ON t.id = s.tuote_id
GROUP BY
    t.id, t.nimi;
