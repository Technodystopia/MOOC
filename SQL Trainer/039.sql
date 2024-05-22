SELECT
  k.nimi AS Kurssi
FROM
  Kurssit k
LEFT JOIN
  Suoritukset s ON k.id = s.kurssi_id
WHERE
  s.opiskelija_id IS NULL;
