WITH Kaverilistat AS (
  SELECT kayttaja_id, COALESCE(GROUP_CONCAT(kaveri_id), '') AS kaverit
  FROM Kaverit
  GROUP BY kayttaja_id
),
Samanlaiset AS (
  SELECT k1.kayttaja_id, COUNT(*) - 1 AS samanlaisia
  FROM Kaverilistat k1
  JOIN Kaverilistat k2 ON k1.kaverit = k2.kaverit
  GROUP BY k1.kayttaja_id
),
KaikkiKayttajat AS (
  SELECT Kayttajat.id, Kayttajat.nimi, IFNULL(Samanlaiset.samanlaisia, (SELECT COUNT(*) - 1 FROM Kayttajat)) AS samanlaisia
  FROM Kayttajat
  LEFT JOIN Samanlaiset ON Kayttajat.id = Samanlaiset.kayttaja_id
)
SELECT nimi, samanlaisia
FROM KaikkiKayttajat;
