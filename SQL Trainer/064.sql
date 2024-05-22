SELECT DISTINCT k.tunnus
FROM Kayttajat k
JOIN Oikeudet o1 ON k.id = o1.kayttaja_id
JOIN Oikeudet o2 ON o1.ryhma_id = o2.ryhma_id
JOIN Kayttajat u ON o2.kayttaja_id = u.id
WHERE u.tunnus = 'uolevi';
