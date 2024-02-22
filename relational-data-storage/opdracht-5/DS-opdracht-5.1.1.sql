-- Selecteer uit de hitcount-tabel het aantal records, de minimale, maximale, gemiddelde en totale hitcount.

SELECT 
    COUNT(*),
    MIN(mhl_hitcount.hitcount),
    MAX(mhl_hitcount.hitcount),
    AVG(mhl_hitcount.hitcount),
    SUM(mhl_hitcount.hitcount)
FROM 
    mhl_hitcount

