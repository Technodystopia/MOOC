SELECT 
    a.nimi AS kayttaja, 
    (
        SELECT COUNT(DISTINCT b.id)
        FROM Kayttajat b
        WHERE b.id != a.id AND NOT EXISTS (
            SELECT 1
            FROM Kaverit k1
            WHERE k1.kayttaja_id = a.id
              AND NOT EXISTS (
                SELECT 1
                FROM Kaverit k2
                WHERE k2.kayttaja_id = b.id
                  AND k2.kaveri_id = k1.kaveri_id
            )
        )
    ) AS kaverilistalla
FROM 
    Kayttajat a
ORDER BY 
    kaverilistalla DESC;
