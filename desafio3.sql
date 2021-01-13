SELECT hr.jobs.JOB_TITLE AS 'Cargo',
(hr.jobs.MAX_SALARY - hr.jobs.MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
ORDER BY (hr.jobs.MAX_SALARY - hr.jobs.MIN_SALARY), hr.jobs.JOB_TITLE;
-- ORDER BY 'Diferença entre salários máximo e mínimo', 'Cargo';
-- (CASE
--     WHEN  IS ???? THEN ????
--     ELSE 'Diferença entre salários máximo e mínimo'
-- END);
