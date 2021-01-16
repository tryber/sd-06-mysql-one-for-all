CREATE VIEW faturamento_atual AS
SELECT
MIN(p.plan_price) AS 'faturamento_minimo',
MAX(p.plan_price) AS 'faturamento_maximo',
(SELECT ROUND(SUM(plan_price) / 4, 2) FROM SpotifyClone.plans) AS 'faturamento_medio',
(SELECT ROUND(SUM(p.plan_price), 2)
FROM SpotifyClone.plans p
INNER JOIN SpotifyClone.users u ON
u.plan_id = p.plan_id) AS 'faturamento_total'
FROM SpotifyClone.plans AS p;
