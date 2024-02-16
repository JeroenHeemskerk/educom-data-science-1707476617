-- Selecteer de naam, straat, huisnummer en postcode van alle leveranciers uit de stad Amsterdam, die actief zijn in de (sub)rubriek 'drank' (of een subrubriek daarvan) gesorteerd op rubrieknaam, leveranciersnaam

SELECT mhl_suppliers.name, straat, huisnr, postcode 
FROM mhl_suppliers 
JOIN mhl_suppliers_mhl_rubriek_view ON mhl_suppliers.id = mhl_suppliers_mhl_rubriek_view.mhl_suppliers_id
JOIN mhl_rubrieken ON mhl_rubriek_view_id = mhl_rubrieken.id
WHERE mhl_suppliers.city_id = 104 AND mhl_rubrieken.id = 235 AND mhl_rubrieken.parent = 235
ORDER BY mhl_rubrieken.name ASC, mhl_suppliers.name ASC;