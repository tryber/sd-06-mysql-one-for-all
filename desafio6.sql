CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(pl.value_plan), 2) AS faturamento_minimo,
ROUND(MAX(pl.value_plan), 2) AS faturamento_maximo,
ROUND(AVG(pl.value_plan), 2) AS faturamento_medio,
ROUND(SUM(pl.value_plan), 2) AS faturamento_total
FROM plans AS pl 
INNER JOIN users AS us
ON us.plan_id = pl.plan_id;
