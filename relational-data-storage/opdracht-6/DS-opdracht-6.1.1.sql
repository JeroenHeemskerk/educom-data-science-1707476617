-- Selecteer uit de hitcount-tabel het aantal leveranciers en totale hitcount per maand (display de nederlandse naam van de maand), gesorteerd per jaar en maand

SELECT 
    mhl_hitcount.year AS jaar,
    CASE 
        WHEN mhl_hitcount.month = 1 THEN 'januari'
        WHEN mhl_hitcount.month = 2 THEN 'februari'
        WHEN mhl_hitcount.month = 3 THEN 'maart'
        WHEN mhl_hitcount.month = 4 THEN 'april'
        WHEN mhl_hitcount.month = 5 THEN 'mei'
        WHEN mhl_hitcount.month = 6 THEN 'juni'
        WHEN mhl_hitcount.month = 7 THEN 'juli'
        WHEN mhl_hitcount.month = 8 THEN 'augustus'
        WHEN mhl_hitcount.month = 9 THEN 'september'
        WHEN mhl_hitcount.month = 10 THEN 'oktober'
        WHEN mhl_hitcount.month = 11 THEN 'november'
        WHEN mhl_hitcount.month = 12 THEN 'december'
    END AS maand,
    COUNT(distinct mhl_hitcount.supplier_ID) AS "aantal leveranciers",
    SUM(mhl_hitcount.hitcount) AS "Totaal aantal hits"
FROM
    mhl_hitcount
GROUP BY
    mhl_hitcount.year desc,
    mhl_hitcount.month;

-- not sure what part of the query should be
-- 'subqueried'. I could think of a possible subquery

-- WHERE 
-- year = (SELECT MIN(year) FROM mhl_hitcount)