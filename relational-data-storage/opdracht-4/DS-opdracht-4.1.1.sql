--Selecteer de naam, straat, huisnummer en postcode van alle leveranciers uit de stad Amsterdam.

SELECT mhl_suppliers.name, straat, huisnr, postcode FROM mhl_suppliers INNER JOIN mhl_cities ON mhl_suppliers.city_id = mhl_cities.id WHERE mhl_suppliers.city_id = 104; AND mhl_cities.name = "amsterdam";