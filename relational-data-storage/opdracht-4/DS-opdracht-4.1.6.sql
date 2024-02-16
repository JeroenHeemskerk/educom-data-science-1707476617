--Selecteer de hitcount 
--in januari 2014, leveranciersnaam, 
--plaatsnaam, gemeentenaam, provincienaam
--van de leveranciers uit 
--de provincie 'beneden de grote rivieren'

--provincie beneden de grote rivieren, waar wordt in de data deze distinctie gemaakt?

SELECT 
    mhl_hitcount.hitcount, 
    mhl_suppliers.name,
    mhl_cities.name AS city_name, 
    mhl_communes.name AS commune_name, 
    mhl_districts.name AS district_name
FROM 
    mhl_suppliers 
INNER JOIN 
    mhl_cities ON mhl_suppliers.city_ID = mhl_cities.id 
INNER JOIN 
    mhl_communes ON mhl_cities.commune_ID = mhl_communes.id 
INNER JOIN 
    mhl_districts ON mhl_communes.district_ID = mhl_districts.id 
INNER JOIN 
    mhl_hitcount ON mhl_suppliers.id = mhl_hitcount.supplier_id 
WHERE 
    (mhl_districts.name = "Limburg" OR mhl_districts.name = "Noord-Brabant" OR mhl_districts.name = "Zeeland") 
    AND mhl_hitcount.year = 2014 
    AND mhl_hitcount.month = 1;