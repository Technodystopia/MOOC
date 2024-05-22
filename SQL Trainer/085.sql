SELECT COUNT(*) AS valintatavat
FROM Matkustajat m1
JOIN Matkustajat m2 ON m1.vaunu_id = m2.vaunu_id
WHERE m1.id < m2.id;
