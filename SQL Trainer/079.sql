SELECT 
    Vaunut.nimi,
    COALESCE(COUNT(Matkustajat.id), 0) AS matkustajien_maara
FROM 
    Vaunut
LEFT JOIN 
    Matkustajat ON Vaunut.id = Matkustajat.vaunu_id
GROUP BY 
    Vaunut.id, Vaunut.nimi;
