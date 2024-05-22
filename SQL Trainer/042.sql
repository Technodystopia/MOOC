SELECT
  nimi AS Tuote,
  hinta AS Hinta
FROM
  Tuotteet
WHERE
  hinta % 2 = 0;
