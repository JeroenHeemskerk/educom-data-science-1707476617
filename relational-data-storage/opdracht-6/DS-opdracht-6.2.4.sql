-- Selecteer het aantal leveranciers dat lid is geworden per jaar en per maandnaam.

SELECT
    YEAR(mhl_suppliers.joindate) AS jaar,
    MONTH(mhl_suppliers.joindate) AS maand,
    COUNT(mhl_suppliers.id) AS 'Aantal aanmeldingen' 
FROM 
    mhl_suppliers
GROUP BY
    YEAR(mhl_suppliers.joindate),
    MONTH(mhl_suppliers.joindate);

