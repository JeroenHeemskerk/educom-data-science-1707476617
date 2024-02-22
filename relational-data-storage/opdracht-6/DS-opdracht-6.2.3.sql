-- Selecteer de naam van de dag en het aantal leveranciers dat op die dag lid geworden is.

SELECT 
    CASE 
        WHEN WEEKDAY(mhl_suppliers.joindate) = 0 THEN 'Monday'
        WHEN WEEKDAY(mhl_suppliers.joindate) = 1 THEN 'Tuesday'
        WHEN WEEKDAY(mhl_suppliers.joindate) = 2 THEN 'Wednesday'
        WHEN WEEKDAY(mhl_suppliers.joindate) = 3 THEN 'Thursday'
        WHEN WEEKDAY(mhl_suppliers.joindate) = 4 THEN 'Friday'
        WHEN WEEKDAY(mhl_suppliers.joindate) = 5 THEN 'Saturday'
        WHEN WEEKDAY(mhl_suppliers.joindate) = 6 THEN 'Sunday'
    END AS 'Dag van de week',
    COUNT(mhl_suppliers.id) AS 'Aantal aanmeldingen'
FROM 
    mhl_suppliers
GROUP BY
    CASE 
        WHEN WEEKDAY(mhl_suppliers.joindate) = 0 THEN 'Monday'
        WHEN WEEKDAY(mhl_suppliers.joindate) = 1 THEN 'Tuesday'
        WHEN WEEKDAY(mhl_suppliers.joindate) = 2 THEN 'Wednesday'
        WHEN WEEKDAY(mhl_suppliers.joindate) = 3 THEN 'Thursday'
        WHEN WEEKDAY(mhl_suppliers.joindate) = 4 THEN 'Friday'
        WHEN WEEKDAY(mhl_suppliers.joindate) = 5 THEN 'Saturday'
        WHEN WEEKDAY(mhl_suppliers.joindate) = 6 THEN 'Sunday'
    END
ORDER BY
    CASE 
        WHEN WEEKDAY(mhl_suppliers.joindate) = 6 THEN 1 
        WHEN WEEKDAY(mhl_suppliers.joindate) = 0 THEN 2
        WHEN WEEKDAY(mhl_suppliers.joindate) = 1 THEN 3
        WHEN WEEKDAY(mhl_suppliers.joindate) = 2 THEN 4
        WHEN WEEKDAY(mhl_suppliers.joindate) = 3 THEN 5
        WHEN WEEKDAY(mhl_suppliers.joindate) = 4 THEN 6
        WHEN WEEKDAY(mhl_suppliers.joindate) = 5 THEN 7
    END ASC;


--experiment: WEEKDAY(mhl_suppliers.joindate) AS 'Dag van de week'
--order by to get the order right
