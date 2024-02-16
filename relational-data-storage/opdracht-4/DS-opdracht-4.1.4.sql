-- Selecteer de naam, straat , huisnr, en postcode van alle leveranciers die 'specialistische leverancier' zijn of 'ook voor particulieren' werken

SELECT mhl_suppliers.name, mhl_suppliers.straat, mhl_suppliers.huisnr, mhl_suppliers.postcode 
FROM mhl_yn_properties 
INNER JOIN mhl_suppliers ON mhl_yn_properties.supplier_ID = mhl_suppliers.id 
INNER JOIN mhl_propertytypes ON mhl_yn_properties.propertytype_id = mhl_propertytypes.id 
WHERE mhl_propertytypes.name = "ook voor particulieren" OR mhl_propertytypes.name = "specialistische leverancier";
