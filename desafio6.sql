CREATE VIEW faturamento_atual AS
SELECT 
ROUND(MIN(pla.plano_valor), 2 ) AS faturamento_minimo,
ROUND(MAX(pla.plano_valor), 2 ) AS faturamento_maximo,
ROUND(AVG(pla.plano_valor), 2 ) AS faturamento_medio,
ROUND(SUM(pla.plano_valor), 2 ) AS faturamento_total
FROM SpotifyClone.table_usuarios AS usu
INNER JOIN SpotifyClone.table_planos AS pla
ON pla.plano_id = usu.plano_id;
