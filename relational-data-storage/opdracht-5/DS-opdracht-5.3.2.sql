-- Maak een view 'VERZENDLIJST'

CREATE VIEW v_verzendlijst
AS
SELECT 
    mhl_suppliers.id AS ID, 
    CASE 
        WHEN mhl_suppliers.p_address IS NOT NULL AND mhl_suppliers.p_address != '' THEN mhl_suppliers.p_address 
        ELSE CONCAT(COALESCE(mhl_suppliers.straat, ''), ' ', COALESCE(mhl_suppliers.huisnr, '')) 
    END AS adres, 
    CASE
        WHEN mhl_suppliers.p_address IS NOT NULL AND mhl_suppliers.p_address != '' THEN mhl_suppliers.p_postcode
        ELSE mhl_suppliers.postcode
    END AS postcode,
    CASE    
        WHEN mhl_suppliers.p_address IS NOT NULL AND mhl_suppliers.p_address != '' THEN mhl_cities.name
        ELSE mhl_cities.name
    END AS stad
FROM 
    mhl_suppliers
LEFT JOIN 
    mhl_cities ON mhl_suppliers.city_id = mhl_cities.id
LEFT JOIN
    mhl_cities AS mhl_cities_p ON mhl_suppliers.p_city_id = mhl_cities_p.id;