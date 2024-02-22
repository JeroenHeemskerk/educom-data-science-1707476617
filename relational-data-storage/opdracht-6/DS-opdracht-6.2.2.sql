-- Selecteer het ID, de joindate en het aantal dagen dat ze vandaag lid zijn, oplopend gesorteerd naar het aantal dagen lid.

SELECT
    mhl_suppliers.id AS id,
    mhl_suppliers.joindate AS joindate,
    DATEDIFF(CURDATE(), mhl_suppliers.joindate) AS dagen_lid
FROM 
    mhl_suppliers
ORDER BY 
    dagen_lid ASC;

