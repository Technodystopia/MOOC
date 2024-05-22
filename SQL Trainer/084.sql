SELECT 
    V.nimi AS vaunu
FROM 
    Vaunut V
LEFT JOIN Matkustajat M ON V.id = M.vaunu_id
WHERE 
    M.id IS NULL;
