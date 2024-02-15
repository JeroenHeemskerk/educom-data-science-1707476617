-- Selecteer alle leveranciers, gesorteerd op lidmaatschap, stad en postcode.

SELECT * FROM mhl_suppliers ORDER BY name, membertype, postcode, city_id;