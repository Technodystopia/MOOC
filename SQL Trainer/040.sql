SELECT
  k.nimi AS Kaupunki,
  COALESCE(COUNT(l.id), 0) AS LentojenMaara
FROM
  Kaupungit k
LEFT JOIN
  Lennot l ON k.id = l.mista_id
GROUP BY
  k.id, k.nimi;
