SELECT 
    SUM(Vaunut.paikat - COALESCE(Matkustajat.matkustajien_lukumaara, 0)) AS tyhjien_paikkojen_maara
FROM 
    Vaunut
LEFT JOIN (
    SELECT 
        vaunu_id, 
        COUNT(*) AS matkustajien_lukumaara 
    FROM 
        Matkustajat 
    GROUP BY 
        vaunu_id
) AS Matkustajat ON Vaunut.id = Matkustajat.vaunu_id;
