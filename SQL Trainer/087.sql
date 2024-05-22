SELECT p.nimi,
       p.hinta AS "Paketin hinta",
       COALESCE(SUM(t.hinta), 0) AS "Tuotteiden hinta",
       (COALESCE(SUM(t.hinta), 0) - p.hinta) AS "Säästö"
FROM Paketit p
LEFT JOIN Sisallot s ON p.id = s.paketti_id
LEFT JOIN Tuotteet t ON s.tuote_id = t.id
GROUP BY p.id, p.hinta;