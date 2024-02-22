-- Maak nu met behulp van deze views een query voor een verzendlijst

SELECT 
    mhl_suppliers.name AS supplier_name,
    CASE 
        WHEN COUNT(DISTINCT d.contact) > 1 THEN 't.a.v. de directie'
        ELSE IFNULL(MAX(d.contact), 't.a.v. de directie')
    END AS contact,
    v.adres AS adres,
    v.postcode AS postcode,
    v.stad AS stad
FROM 
    v_directie d
LEFT JOIN 
    v_verzendlijst v ON d.ID = v.ID
LEFT JOIN 
    mhl_suppliers ON v.ID = mhl_suppliers.id
GROUP BY 
    mhl_suppliers.name,
    v.adres,
    v.postcode,
    v.stad;

--vraag: contact of t.a.v. directie. 

--betekent dit als meer dan 1 contactpersoon, dan

--t.a.v. directie? 

--bovenstaande query is met deze aanname geschreven