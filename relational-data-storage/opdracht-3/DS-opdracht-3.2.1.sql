--Selecteer naam, straat, huisnummer en postcode van alle leveranciers uit 'Amsterdam'.

-- mhl suppliers holds the columns with information that we want

SELECT name, straat, huisnr, postcode FROM mhl_suppliers WHERE city_id = 104;

-- mhl_cities holds the 'meaning' of city_ID. 
-- Meaning that we can know that 'amsterdam' equals city_ID = 104 
-- By looking into table mhl_cities.

-- filters uit één tabel. 
-- Ik kan dus niet 'amsterdam' middels een query halen zonder een tweede tabel erbij te betrekken
