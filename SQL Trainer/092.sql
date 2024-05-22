SELECT k.nimi, COUNT(k2.id) AS mutual_friends
FROM Kayttajat k
LEFT JOIN Kaverit ka1 ON k.id = ka1.kayttaja_id
LEFT JOIN Kaverit ka2 ON ka1.kaveri_id = ka2.kayttaja_id AND ka2.kaveri_id = k.id
LEFT JOIN Kayttajat k2 ON ka2.kayttaja_id = k2.id
GROUP BY k.id, k.nimi
ORDER BY k.nimi;
