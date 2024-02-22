-- Selecteer alle Nederlandse gemeentes, de leveranciersnaam, de totale hitcount en de gemiddelde hitcount van de betreffende gemeente, van die leveranciers die een hogere hitcount hebben dan dat gemiddelde, gesorteerd op het verschil (totaal ten opzichte van gemiddelde) in aflopende volgorde

SELECT  
    mhl_communes.name AS gemeente,
    mhl_suppliers.name AS leverancier,
    SUM(mhl_hitcount.hitcount) AS total_hitcount, 
    (SELECT AVG(hitcount) FROM mhl_hitcount) AS average_hitcount
FROM
    mhl_hitcount
INNER JOIN
    mhl_suppliers ON mhl_hitcount.supplier_ID = mhl_suppliers.id
INNER JOIN
    mhl_cities ON mhl_suppliers.city_id = mhl_cities.id
INNER JOIN
    mhl_communes ON mhl_cities.commune_ID = mhl_communes.id
GROUP BY
    gemeente, leverancier
ORDER BY
    gemeente ASC,
    total_hitcount DESC;

-- usage subquery was more clear in this example to me
-- to retrieve average hitcount from hitcount table
-- which would then be calculated for every row