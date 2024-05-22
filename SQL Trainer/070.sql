SELECT MIN(ABS(t1.hinta - t2.hinta)) AS pienin_ero
FROM Tuotteet t1
CROSS JOIN Tuotteet t2
WHERE t1.id <> t2.id;
