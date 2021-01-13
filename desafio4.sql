SELECT jobs.JOB_TITLE AS 'Cargo',
ROUND(AVG(hr.employees.SALARY), 2) AS 'Média salarial',
CASE
WHEN AVG(hr.employees.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(hr.employees.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(hr.employees.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(hr.employees.SALARY) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees
INNER JOIN hr.jobs
ON hr.employees.JOB_ID = jobs.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY AVG(hr.employees.SALARY), jobs.JOB_TITLE;
