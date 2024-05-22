SELECT yritys, MAX(palkka) AS x
FROM Tyontekijat
WHERE palkka >= 5000
GROUP BY yritys;
