WITH päivät AS (
  SELECT alku AS päivä, 1 AS tapahtuma FROM Varaukset
  UNION ALL
  SELECT loppu, -1 FROM Varaukset
),
päällekkäiset AS (
  SELECT päivä, SUM(tapahtuma) OVER (ORDER BY päivä ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS päällekkäin
  FROM päivät
)
SELECT MAX(päällekkäin) AS eniten_päällekkäin FROM päällekkäiset;
