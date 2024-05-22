SELECT
  k.nimi AS Kurssi,
  COALESCE(COUNT(s.opiskelija_id), 0) AS SuorittajienMaara
FROM
  Kurssit k
LEFT JOIN
  Suoritukset s ON k.id = s.kurssi_id
GROUP BY
  k.id, k.nimi;
