-- Selecteer alle rubrieknamen en het aantal leveranciers in die rubriek

SELECT 
    CASE 
        WHEN main.parent = 0 THEN main.name
        ELSE CONCAT_WS(' - ', (SELECT name FROM mhl_rubrieken WHERE id = main.parent), main.name)
    END AS name,
    COUNT(mhl_suppliers_ID) AS numsup
FROM 
    mhl_rubrieken AS main
INNER JOIN
    mhl_suppliers_mhl_rubriek_view ON main.id = mhl_suppliers_mhl_rubriek_view.mhl_rubriek_view_ID
INNER JOIN
    mhl_suppliers ON mhl_suppliers_mhl_rubriek_view.mhl_suppliers_ID = mhl_suppliers.id
GROUP BY
    name ASC
ORDER BY
    name ASC;
