-- Selecteer naam van de plaats en naam van de gemeente, wanneer gemeentenaam niet geldi dan INVALID als waarde.

SELECT 
    mhl_cities.name AS citynaam, 
    IFNULL(mhl_communes.name, 'invalid') AS gemeentenaam, 
FROM 
    mhl_cities 
LEFT JOIN 
    mhl_communes ON mhl_cities.commune_id = mhl_communes.ID 
ORDER BY 
    citynaam ASC;