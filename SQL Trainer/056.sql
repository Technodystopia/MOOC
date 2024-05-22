SELECT sana
FROM Sanat
WHERE sana > (SELECT MIN(sana) FROM Sanat);


