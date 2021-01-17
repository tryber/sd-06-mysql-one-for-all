CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(p.value_plan), 2) AS 'faturamento_minimo',
ROUND(MAX(p.value_plan), 2) AS 'faturamento_maximo',
ROUND(AVG(p.value_plan), 2) AS 'faturamento_medio',
ROUND(SUM(p.value_plan), 2) AS 'faturamento_total'
FROM SpotifyClone.plans as p
INNER JOIN SpotifyClone.users AS u ON u.plan_id = p.plan_id;
