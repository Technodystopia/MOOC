SELECT
    ROW_NUMBER() OVER (ORDER BY MAX(t.tulos) DESC, p.nimi) AS sijaluku,
    p.nimi AS pelaajan_nimi,
    MAX(t.tulos) AS paras_tulos
FROM
    Pelaajat p
JOIN
    Tulokset t ON p.id = t.pelaaja_id
GROUP BY
    p.id, p.nimi
ORDER BY
    MAX(t.tulos) DESC, p.nimi;
