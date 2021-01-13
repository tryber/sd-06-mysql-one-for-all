SELECT UCASE(CONCAT(hr.employees.FIRST_NAME, ' ', hr.employees.LAST_NAME)) AS 'Nome completo',
hr.job_history.START_DATE AS  'Data de início',
hr.employees.SALARY AS 'Salário'
FROM hr.employees
INNER JOIN hr.job_history ON hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
WHERE MONTH(hr.job_history.START_DATE) IN(1,2,3,01,02,03)
ORDER BY hr.employees.FIRST_NAME, hr.job_history.START_DATE;


-- teste SELF JOIN
-- SELECT UPPER(CONCAT(hr.employees.FIRST_NAME, ' ', hr.employees.LAST_NAME)) AS 'Nome completo',
-- hr.job_history.START_DATE AS  'Data de início',
-- hr.employees.SALARY AS 'Salário',
-- FROM hr.employees, hr.job_history
-- WHERE hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
-- ORDER BY hr.employees.FIRST_NAME, hr.job_history.START_DATE;
