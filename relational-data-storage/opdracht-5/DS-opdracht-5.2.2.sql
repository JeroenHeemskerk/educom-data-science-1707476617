--Selecteer het aantal Gold, silver, bronze en overige suppliers per stad, aflopend gesorteerd op Gold, Silver, Bronze, other.

SELECT
    mhl_cities.name AS Stad,
    SUM(CASE WHEN mhl_membertypes.name = 'Gold' THEN 1 ELSE 0 END) AS Gold,
    SUM(CASE WHEN mhl_membertypes.name = 'Silver' THEN 1 ELSE 0 END) AS Silver,
    SUM(CASE WHEN mhl_membertypes.name = 'Bronze' THEN 1 ELSE 0 END) AS Bronze,
    SUM(CASE WHEN mhl_membertypes.name NOT IN ('Gold','Silver','Bronze') THEN 1 ELSE 0 END) 'Other'
FROM 
    mhl_suppliers
JOIN 
    mhl_membertypes ON mhl_suppliers.membertype=mhl_membertypes.id
JOIN 
    mhl_cities ON city_ID = mhl_cities.ID
GROUP BY 
    city_id
ORDER BY 
    Gold desc, 
    Silver desc, 
    Bronze desc, 
    Other desc