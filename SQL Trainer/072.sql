SELECT 
    SUM(muutos) OVER (ORDER BY id) AS saldo_historia
FROM 
    Tapahtumat
WHERE 
    tili_id = (SELECT id FROM Tilit WHERE haltija = 'Uolevi');
