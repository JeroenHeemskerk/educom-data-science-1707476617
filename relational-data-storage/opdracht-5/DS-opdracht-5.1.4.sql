--Selecteer uit de hitcount-tabel de leveranciersnaam, het totaal aantal hits, het aantal maanden en de gemiddelde hitcount.

SELECT  
    mhl_hitcount.supplier_ID,
    mhl_suppliers.name AS supplier_name,
    COUNT(CONCAT(mhl_hitcount.year, ' ', mhl_hitcount.month)) AS num_months,
    MIN(mhl_hitcount.hitcount) AS min_hitcount,
    MAX(mhl_hitcount.hitcount) AS max_hitcount,
    AVG(mhl_hitcount.hitcount) AS avg_hitcount,
    SUM(mhl_hitcount.hitcount) AS sum_hitcount
FROM 
    mhl_hitcount
JOIN
    mhl_suppliers ON mhl_hitcount.supplier_ID = mhl_suppliers.id
GROUP BY
    mhl_hitcount.supplier_ID,
    mhl_suppliers.name
ORDER BY
    mhl_hitcount.supplier_ID;