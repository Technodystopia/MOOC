SELECT yritys, COUNT(id) AS x
FROM Tyontekijat
GROUP BY yritys;
