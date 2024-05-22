SELECT 
    Vaunut.nimi,
    (Vaunut.paikat - COALESCE(COUNT(Matkustajat.id), 0)) AS tyhjien_paikkojen_maara
FROM 
    Vaunut
LEFT JOIN 
    Matkustajat ON Vaunut.id = Matkustajat.vaunu_id
GROUP BY 
    Vaunut.id, Vaunut.nimi, Vaunut.paikat;
