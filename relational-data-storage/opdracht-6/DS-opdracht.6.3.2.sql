-- Selecteer de namen van de eerste 25 leveranciers met HTML-teken 
--in hun naam, met de vervanging van deze tekens 
--door het juiste speciale teken.

SELECT  
    mhl_suppliers.name AS name,
    CONVERT(mhl_suppliers.name USING utf16) AS nice_name
FROM
    mhl_suppliers
WHERE
    mhl_suppliers.name LIKE "%&%;%"
LIMIT 25;

--searching how to convert said characters