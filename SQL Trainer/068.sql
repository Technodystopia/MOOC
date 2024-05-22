SELECT 
    t1.nimi,
    (
        SELECT COUNT(*)
        FROM Tuotteet t2
        WHERE ABS(t1.hinta - t2.hinta) <= 1
    ) AS hintaero
FROM Tuotteet t1;
