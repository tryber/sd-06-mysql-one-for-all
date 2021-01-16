CREATE VIEW faturamento_atual AS
SELECT MIN(p.valor) AS faturamento_minimo,
MAX(p.valor) AS faturamento_maximo,
ROUND(AVG(p.valor),2) AS faturamento_medio,
SUM(p.valor) AS faturamento_total
FROM planos AS p
INNER JOIN usuarios AS u
ON u.planos_id = p.id;
