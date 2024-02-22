-- Selecteer het ID en de joindate (in 'EUR' datumformaat) van de leveranciers die in de laatste 7 dagen van de maand lid zijn geworden
-- Useful https://www.sqltutorial.org/sql-date-functions/how-to-extract-day-from-date-in-sql/

SELECT
    mhl_suppliers.joindate AS joindate,
    mhl_suppliers.id AS id
FROM
    mhl_suppliers
WHERE
    DAY(LAST_DAY(mhl_suppliers.joindate)) - DAY(mhl_suppliers.joindate) <= 7
ORDER BY
    id ASC;

    
--DAY() I can use to extract the day of the month from mhl_suppliers.joindate
--LAST_DAY() I can use to extract the last day of the month from mhl_suppliers.joindate
--DAY() <= 7 to extract just the last 7 days for the WHERE clause