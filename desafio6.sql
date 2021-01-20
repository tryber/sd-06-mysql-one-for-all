CREATE VIEW faturamento_atual AS 
SELECT 
ROUND(MIN(P.valor), 2) AS 'faturamento_minimo',
ROUND(MAX(P.valor), 2) AS 'faturamento_maximo',
ROUND(AVG(P.valor), 2)  AS 'faturamento_medio',
ROUND(SUM(P.valor), 2)  AS 'faturamento_total'
FROM SpotifyClone.plano AS P
INNER JOIN SpotifyClone.usuario AS U
ON P.plano_id = U.plano_id;
