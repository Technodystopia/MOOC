SELECT 
    M.nimi AS yksin_vaunussa
FROM 
    Matkustajat M
LEFT JOIN (
    SELECT 
        vaunu_id,
        COUNT(*) AS matkustajien_maara
    FROM 
        Matkustajat
    GROUP BY 
        vaunu_id
) AS Vaunussa ON M.vaunu_id = Vaunussa.vaunu_id
WHERE 
    Vaunussa.matkustajien_maara = 1;
