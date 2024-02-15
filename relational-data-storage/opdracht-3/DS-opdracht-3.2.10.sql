--Selecteer naam, straat, huisnummer en postcode van alle leveranciers wiens naam HTML-entities bevat (&xxxx;).

SELECT name, straat, huisnr, postcode FROM mhl_suppliers WHERE name LIKE "%&%;%";