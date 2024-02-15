-- Selecteer naam, straat, huisnummer en postcode van alle leveranciers met een huisnummer tussen de 10 en 20 of groter dan 100

SELECT name, straat, huisnr, postcode FROM mhl_suppliers WHERE huisnr  >= 10 AND huisnr <= 20 OR huisnr => 100;