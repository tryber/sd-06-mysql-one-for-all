CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(fat.plano_valor), 2) 
AS faturamento_minimo,
ROUND(MAX(fat.plano_valor), 2) 
AS faturamento_maximo,
ROUND(AVG(fat.plano_valor), 2) 
AS faturamento_medio,
ROUND(SUM(fat.plano_valor), 2) 
AS faturamento_total
FROM planos AS fat
INNER JOIN users AS u
ON u.plano_id = fat.plano_id;
