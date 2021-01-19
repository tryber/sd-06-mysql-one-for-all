CREATE VIEW faturamento_atual AS
SELECT MIN(P.valor_plano) AS 'faturamento_minimo',
MAX(P.valor_plano) AS 'faturamento_maximo',
ROUND(AVG(P.valor_plano), 2) AS 'faturamento_medio',
SUM(P.valor_plano) AS 'faturamento_total'
FROM SpotifyClone.plano P
INNER JOIN SpotifyClone.usuario U ON P.plano_id = U.plano_id;
