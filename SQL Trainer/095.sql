WITH Kaverit2 AS (
    SELECT k1.kayttaja_id, k2.kaveri_id
    FROM Kaverit k1
    JOIN Kaverit k2 ON k1.kaveri_id = k2.kayttaja_id
    WHERE k1.kayttaja_id != k2.kaveri_id
),
KaikkiKaverit AS (
    SELECT kayttaja_id, kaveri_id FROM Kaverit
    UNION
    SELECT kayttaja_id, kaveri_id FROM Kaverit2
)
SELECT k.nimi, COUNT(DISTINCT kk.kaveri_id) AS kaverien_maara
FROM Kayttajat k
LEFT JOIN KaikkiKaverit kk ON k.id = kk.kayttaja_id
GROUP BY k.nimi;
