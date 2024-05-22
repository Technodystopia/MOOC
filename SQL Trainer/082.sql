SELECT 
  m.nimi,
  CASE WHEN v.id IS NOT NULL THEN COUNT(*) OVER (PARTITION BY v.id) - 1 ELSE 0 END AS muita_matkustajia
FROM 
  matkustajat m
  LEFT JOIN vaunut v ON v.id = m.vaunu_id
