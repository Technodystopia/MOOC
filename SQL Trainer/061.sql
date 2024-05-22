SELECT k.tunnus AS kayttaja, COUNT(o.ryhma_id) AS ryhmien_maara
FROM Kayttajat k
LEFT JOIN Oikeudet o ON k.id = o.kayttaja_id
GROUP BY k.id, k.tunnus;
