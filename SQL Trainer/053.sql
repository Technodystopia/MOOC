SELECT t1.nimi
FROM Tuotteet t1
WHERE NOT EXISTS (
    SELECT 1
    FROM Tuotteet t2
    WHERE t2.id <> t1.id AND t2.hinta = t1.hinta
);
