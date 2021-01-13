CREATE VIEW faturamento_atual AS
SELECT 
ROUND(MIN(SpotifyClone.plan.plan_value), 2) AS faturamento_minimo,
ROUND(MAX(SpotifyClone.plan.plan_value), 2) AS faturamento_maximo,
ROUND(AVG(SpotifyClone.plan.plan_value), 2) AS faturamento_medio,
ROUND(SUM(SpotifyClone.plan.plan_value), 2) AS faturamento_total
FROM SpotifyClone.users
INNER JOIN SpotifyClone.plan
ON SpotifyClone.plan.plan_id = SpotifyClone.users.plan_id;
