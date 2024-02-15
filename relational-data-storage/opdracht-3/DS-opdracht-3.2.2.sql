--Selecteer naam, straat, huisnummer en postcode van alle leveranciers met 'Gold', 'Silver' of 'Bronze' lidmaatschap of 'GEEN INTERESSE'.

--column membertype verwijst naar deze verschillende lidmaatschappen welke omschreven staat in table mhl_membertypes

SELECT name, straat, husinr, postcode FROM mhl_suppliers WHERE membertype IN (1, 2, 3, 8);

--deze kunnen in een filtering middels een logical operator IN opgehaald worden