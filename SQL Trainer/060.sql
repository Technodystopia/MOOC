SELECT sana
FROM Sanat
WHERE LENGTH(sana) - LENGTH(REPLACE(sana, 'a', '')) = 2;
