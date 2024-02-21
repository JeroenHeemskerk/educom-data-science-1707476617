-- Maak een verzendlijst voor alle directieleden van alle leveranciers, gesorteerd per provincie, plaatsnaam en naam: wanneer een postbusadres ingevuld dan dit gebruiken, anders vestigingsadres, wannneer contactpersoon afwezig dan die naam in aanhef, anders 't.a.v. de directie'.

SELECT
    mhl_suppliers.name AS leverancier,
    COALESCE(
        CONCAT('Geachte ', 
            IFNULL(mhl_contacts.name, 't.a.v. de directie')
        ), 't.a.v. de directie'
    ) AS aanhef,
    COALESCE(
        CASE 
            WHEN mhl_suppliers.p_address <> '' THEN mhl_suppliers.p_address
            ELSE mhl_suppliers.straat
        END, 'Geen adres beschikbaar'
    ) AS adres,
    COALESCE(
        CASE 
            WHEN mhl_suppliers.p_address <> '' THEN mhl_suppliers.postcode
            ELSE ''
        END, 'Geen postcode beschikbaar'
    ) AS postcode,
    COALESCE(
        mhl_suppliers.city_ID, 'Geen stad beschikbaar'
    ) AS stad
FROM
    mhl_suppliers
LEFT JOIN
    mhl_contacts ON mhl_suppliers.id = mhl_contacts.supplier_id AND mhl_contacts.department = 3
LEFT JOIN
    mhl_districts ON mhl_suppliers.district_ID = mhl_districts.ID
WHERE
    mhl_suppliers.id IN (SELECT supplier_id FROM mhl_contacts WHERE department = 3)
ORDER BY
    mhl_districts.name,
    mhl_suppliers.city_ID,
    mhl_contacts.name;


--#####probleem#####

--Ik kan de connectie tussen supplier en district 
--(provincie) niet (meer) vinden. 

--Het is lastig een join uit te voeren op 
--kolommen die ik niet kan vinden

--###probleem###





--mhl_departments.id = 3 is directie !
--mhl_contacts.department = 3 is directie contact!
--mhl_contacts.supplier_id where mhl_contacts.department = 3

----Wanneer postbus gevuld dit gebruiken:

--mhl_suppliers.p_address
--mhl_suppliers.postcode

--Anders vestigingsadres gebruiken:

--mhl_suppliers.straat

----Wanneer contactpersoon aanwezig:

--mhl_contacts.name where mhl_contacts.supplier_id matches mhl_contacts.supplier_id

--Anders:

--'tav de directie'
