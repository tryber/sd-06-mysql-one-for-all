CREATE VIEW faturamento_atual AS
SELECT 
MIN(p.value) AS faturamento_minimo,
MAX(p.value) AS faturamento_maximo,
ROUND(AVG(p.value), 2) AS faturamento_medio,
SUM(p.value) AS faturamento_total
FROM plans AS p
INNER JOIN users AS u
ON u.plan_id = p.plan_id;
