-- Selecteer naam en gemeente id van plaatsen zonder geldige gemeente

SELECT 
    mhl_cities.name AS citynaam, 
    mhl_communes.name AS gemeentenamen, 
    mhl_communes.id AS gemeente_ID 
FROM 
    mhl_cities 
LEFT JOIN 
    mhl_communes ON mhl_cities.commune_id = mhl_communes.ID 
WHERE 
    mhl_communes.ID IS NULL OR mhl_communies.ID = 0 
ORDER BY 
    citynaam ASC;