-- Selecteer uit de hitcount-tabel per jaar het aantal records, de minimale, maximale, gemiddelde en totale hitcount.

SELECT 
    COUNT(*),
    MIN(mhl_hitcount.hitcount),
    MAX(mhl_hitcount.hitcount),
    AVG(mhl_hitcount.hitcount),
    SUM(mhl_hitcount.hitcount)
FROM 
    mhl_hitcount
GROUP BY
    mhl_hitcount.year
ORDER BY
    mhl_hitcount.year;

