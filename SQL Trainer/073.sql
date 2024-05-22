WITH TilinSaldot AS (
    SELECT 
        Tilit.id AS tili_id,
        Tilit.haltija,
        COALESCE(SUM(Tapahtumat.muutos) OVER (PARTITION BY Tilit.id ORDER BY Tapahtumat.id), 0) AS kumulatiivinen_saldo
    FROM 
        Tilit
    LEFT JOIN 
        Tapahtumat ON Tilit.id = Tapahtumat.tili_id
)
SELECT 
    haltija,
    MAX(kumulatiivinen_saldo) AS suurin_saldo_historiassa
FROM 
    TilinSaldot
GROUP BY 
    haltija;
