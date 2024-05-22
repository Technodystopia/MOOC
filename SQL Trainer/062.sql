SELECT r.nimi AS ryhma, COUNT(o.kayttaja_id) AS kayttajien_maara
FROM Ryhmat r
LEFT JOIN Oikeudet o ON r.id = o.ryhma_id
GROUP BY r.id, r.nimi;
