SELECT Tilit.haltija, COALESCE(SUM(Tapahtumat.muutos), 0) AS saldo
FROM Tilit
LEFT JOIN Tapahtumat ON Tilit.id = Tapahtumat.tili_id
GROUP BY Tilit.id, Tilit.haltija;
