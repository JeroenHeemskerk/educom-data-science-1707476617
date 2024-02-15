--Selecteer naam, straat, huisnummer en postcode van alle leveranciers uit 'Amsterdam' met een postbus in een andere stad.

--Simpele query laat zien dat 2364 staat voor niet bestaand p_city_id. 

--Aanname dat hier de postbus (p_city_id) locatie niet afwijkt van city_id locatie

SELECT name, straat, huisnr, postcode FROM mhl_suppliers WHERE city_id = 104 AND p_city_ID <> 2364 AND p_city_ID <> 104;