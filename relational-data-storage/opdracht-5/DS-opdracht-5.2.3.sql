-- Selecteer uit de hitcount-tabel per jaar het aantal records, de minimale, maximale, gemiddelde en totale hitcount.

SELECT 
    mhl_hitcount.year,
    COUNT(*) AS Total_Count,
    SUM(CASE WHEN mhl_hitcount.month IN (1, 2, 3) THEN mhl_hitcount.hitcount ELSE 0 END) AS 'Eerste kwartaal',
    SUM(CASE WHEN mhl_hitcount.month IN (4, 5, 6) THEN mhl_hitcount.hitcount ELSE 0 END) AS 'Tweede kwartaal',
    SUM(CASE WHEN mhl_hitcount.month IN (7, 8, 9) THEN mhl_hitcount.hitcount ELSE 0 END) AS 'Derde kwartaal',
    SUM(CASE WHEN mhl_hitcount.month IN (10, 11, 12) THEN mhl_hitcount.hitcount ELSE 0 END) AS 'Vierde kwartaal',
    SUM(mhl_hitcount.hitcount) AS Totaal
FROM 
    mhl_hitcount
GROUP BY
    mhl_hitcount.year
ORDER BY
    mhl_hitcount.year;