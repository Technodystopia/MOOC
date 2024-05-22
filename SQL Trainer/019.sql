SELECT yritys, MAX(palkka) AS x
FROM Tyontekijat
GROUP BY yritys;
