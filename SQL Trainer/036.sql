SELECT
  o.nimi AS Opiskelija,
  COALESCE(COUNT(s.opiskelija_id), 0) AS SuoritustenMaara
FROM
  Opiskelijat o
LEFT JOIN
  Suoritukset s ON o.id = s.opiskelija_id
GROUP BY
  o.id, o.nimi;

