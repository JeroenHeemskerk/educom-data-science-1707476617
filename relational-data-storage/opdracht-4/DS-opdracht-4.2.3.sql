--Selecteer alle hoofdrubrieken met hun subrubrieken, alfabetisch gesorteerd op hoofdrubriek en daarbinnen op subrubriek

--Ik kan de columns zoals deze in het screenshot staan niet vinden
--Dus ga ik werken met de kolom name in mhl_rubrieken

--deze splits ik op op de conditie dat parent = wel of niet 0

SELECT 
    main.name AS hoofdrubriek,
    sub.name AS subrubriek
FROM 
    mhl_rubrieken AS main
LEFT JOIN 
    mhl_rubrieken AS sub ON main.id = sub.parent
WHERE
    main.parent = 0 OR main.parent IS NULL
ORDER BY 
    hoofdrubriek ASC, 
    subrubriek ASC;