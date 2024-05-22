SELECT 
    v1.id, 
    (
        SELECT COUNT(*)
        FROM Varaukset AS v2 
        WHERE 
            v2.id != v1.id 
            AND (
                v2.alku BETWEEN v1.alku AND v1.loppu 
                OR v2.loppu BETWEEN v1.alku AND v1.loppu 
                OR v1.alku BETWEEN v2.alku AND v2.loppu 
                OR v1.loppu BETWEEN v2.alku AND v2.loppu
            )
    ) AS overlapping_reservations
FROM 
    Varaukset AS v1;
