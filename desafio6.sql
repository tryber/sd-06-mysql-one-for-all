CREATE VIEW faturamento_atual AS
SELECT
(SELECT CAST(ROUND(MIN(p.plan_price), 2) AS DECIMAL(10,2))) AS 'faturamento_minimo',
(SELECT CAST(ROUND(MAX(p.plan_price), 2) AS DECIMAL(10,2))) AS 'faturamento_maximo',
(SELECT CAST(ROUND(SUM(plan_price) / 4, 2) AS DECIMAL(10, 2)) FROM SpotifyClone.plans) AS 'faturamento_medio',
(SELECT CAST(ROUND(SUM(p.plan_price), 2) AS DECIMAL(10,2))
FROM SpotifyClone.plans p
INNER JOIN SpotifyClone.users u ON
u.plan_id = p.plan_id) AS 'faturamento_total'
FROM SpotifyClone.plans AS p;
