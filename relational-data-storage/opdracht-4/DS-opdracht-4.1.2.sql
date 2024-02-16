-- Selecteer de naam, straat, huisnummer, postcode en plaatsnaam van alle leveranciers uit de gemeente Steenwijkerland.

--Municipality is commune_id I think

SELECT mhl_suppliers.name, straat, huisnr, postcode, mhl_cities.name FROM mhl_suppliers INNER JOIN mhl_cities ON mhl_suppliers.city_id = mhl_cities.id WHERE mhl_cities.commune_id = 394;