CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(p.preco), 2) AS `faturamento_minimo`,
ROUND(MAX(p.preco), 2) AS `faturamento_maximo`,
ROUND(AVG(p.preco), 2) AS `faturamento_medio`,
ROUND(SUM(p.preco), 2) AS `faturamento_total`
FROM usuarios u
INNER JOIN planos p ON u.plano_id = p.plano_id;
