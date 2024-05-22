SELECT k.tunnus
FROM Kayttajat k
LEFT JOIN Oikeudet o_uolevi ON k.id = o_uolevi.kayttaja_id AND o_uolevi.ryhma_id IN (
    SELECT ryhma_id FROM Oikeudet WHERE kayttaja_id = 1
)
WHERE o_uolevi.kayttaja_id IS NULL;

