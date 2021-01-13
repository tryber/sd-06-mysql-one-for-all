SELECT 
CTABLE01.ContactName AS 'Nome',
CTABLE01.Country AS 'País',
COUNT(CTABLE01.Country - 1) AS 'Número de compatriotas'

FROM w3schools.customers AS CTABLE01
JOIN w3schools.customers AS CTABLE02

WHERE CTABLE01.Country = CTABLE02.Country
AND CTABLE01.ContactName <> CTABLE02.ContactName

GROUP BY CTABLE01.CustomerID
-- HAVING COUNT(CTABLE01.Country - 1) > 0

ORDER BY CTABLE01.ContactName;
