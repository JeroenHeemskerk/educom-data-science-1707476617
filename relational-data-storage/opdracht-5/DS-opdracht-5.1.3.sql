-- Selecteer uit de hitcount-tabel per jaar, per maand het aantal records, de minimale, maximale, gemiddelde en totale hitcount.

SELECT 
    mhl_hitcount.year,
    mhl_hitcount.month,
    COUNT(*),
    MIN(mhl_hitcount.hitcount),
    MAX(mhl_hitcount.hitcount),
    AVG(mhl_hitcount.hitcount),
    SUM(mhl_hitcount.hitcount)
FROM 
    mhl_hitcount
GROUP BY
    mhl_hitcount.year,
    mhl_hitcount.month
ORDER BY
    mhl_hitcount.year,
    mhl_hitcount.month;