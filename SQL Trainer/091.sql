WITH Tuloslista AS (
    SELECT 
        Pelaajat.nimi AS nimi,
        MAX(Tulokset.tulos) AS max_tulos
    FROM Pelaajat
    JOIN Tulokset ON Pelaajat.id = Tulokset.pelaaja_id
    GROUP BY Pelaajat.nimi
)
SELECT 
    RANK() OVER (ORDER BY max_tulos DESC) AS sijaluku,
    nimi,
    max_tulos
FROM Tuloslista
ORDER BY sijaluku, nimi;
