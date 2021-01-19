CREATE VIEW faturamento_atual AS
SELECT MIN(p.plan_value) AS faturamento_minimo,
MAX(p.plan_value) AS faturamento_maximo,
ROUND(AVG(p.plan_value), 2) AS faturamento_medio,
ROUND(SUM(p.plan_value), 2) AS faturamento_total
FROM SpotifyClone.user_table AS u 
JOIN SpotifyClone.plans AS p
ON p.id = u.plan_id;
