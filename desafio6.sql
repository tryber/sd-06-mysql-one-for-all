CREATE VIEW faturamento_atual AS
SELECT
  ROUND(MIN(plan.cost), 2) AS faturamento_minimo,
  ROUND(MAX(plan.cost), 2) AS faturamento_maximo,
  ROUND(AVG(plan.cost), 2) AS faturamento_medio,
  ROUND(SUM(plan.cost), 2) AS faturamento_total
FROM
  plan
  INNER JOIN users ON plan.id = users.plan_id;
