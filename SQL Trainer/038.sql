SELECT DISTINCT
  k.nimi AS Kurssi
FROM
  Kurssit k
INNER JOIN
  Suoritukset s ON k.id = s.kurssi_id;
