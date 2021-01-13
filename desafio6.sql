USE SpotifyClone;
DROP VIEW IF EXISTS faturamento_atual;

CREATE VIEW faturamento_atual AS 
SELECT MIN(p.preco) AS faturamento_minimo,
MAX(p.preco) AS faturamento_maximo,
ROUND(AVG(p.preco), 2) AS faturamento_medio,
SUM(p.preco) AS faturamento_total
FROM plano AS p
INNER JOIN usuario AS u ON p.plano_id = u.plano_id;

SELECT * FROM faturamento_atual;
