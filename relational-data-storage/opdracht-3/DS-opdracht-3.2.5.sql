--Selecteer naam, straat, huisnummer en postcode van alle leveranciers met een huisnummer tussen de 10 en 20.

SELECT name, straat, huisnr, postcode FROM mhl_suppliers WHERE huisnr  >= 10 AND huisnr <= 20;