SELECT 
    L.name, L.straat, L.huisnr, L.postcode, P.lat, P.lng
FROM   
    mhl_suppliers AS L, pc_lat_long AS P
WHERE 
    L.postcode=P.pc6
ORDER BY 
    P.lat DESC
LIMIT 5