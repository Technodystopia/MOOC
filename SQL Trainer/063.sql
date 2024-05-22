SELECT k.tunnus
FROM Kayttajat k
JOIN Oikeudet o ON k.id = o.kayttaja_id
GROUP BY k.id, k.tunnus
HAVING COUNT(o.ryhma_id) > 1;
