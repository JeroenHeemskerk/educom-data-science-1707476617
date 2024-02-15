--Selecteer naam, straat, huisnummer en postcode van alle leveranciers wiens naam eindigt op handel
SELECT name, straat, huisnr, postcode FROM mhl_suppliers WHERE name LIKE "%handel";
