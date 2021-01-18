CREATE VIEW `faturamento_atual` AS
SELECT MIN(plantable.plan_price) AS `faturamento_minimo`,
MAX(plantable.plan_price) AS `faturamento_maximo`,
ROUND(AVG(plantable.plan_price),2) AS `faturamento_medio`,
SUM((plantable.plan_price)) AS `faturamento_total`
FROM (userstable
INNER JOIN plantable
ON plantable.plan_id = userstable.plan_id);
