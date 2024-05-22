SELECT COUNT(*) AS yhdistelmien_lukumäärä 
FROM (
    SELECT DISTINCT t1.nimi AS nimi1, t2.nimi AS nimi2 
    FROM tuotteet t1, tuotteet t2 
    WHERE t1.hinta + t2.hinta = 10 AND t1.id <= t2.id
) AS yhdistelmat;
