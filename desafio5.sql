SELECT hr.jobs.JOB_TITLE AS 'Cargo',
ROUND(hr.jobs.MAX_SALARY - hr.jobs.MIN_SALARY) AS 'Variação Salarial',
ROUND(hr.jobs.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
ROUND(hr.jobs.MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY (hr.jobs.MAX_SALARY - hr.jobs.MIN_SALARY), hr.jobs.JOB_TITLE;
-- ORDER BY 'Variação Salarial', 'Cargo';
