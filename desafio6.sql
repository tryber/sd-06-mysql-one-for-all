CREATE VIEW faturamento_atual AS SELECT
ROUND(MIN(P.valor), 2) AS faturamento_minimo,
ROUND(MAX(P.valor), 2) AS faturamento_maximo,
ROUND(AVG(P.valor), 2) AS faturamento_medio,
ROUND(SUM(P.valor), 2) AS faturamento_total
FROM SpotifyClone.usuarios AS U
LEFT JOIN planos AS P
ON U.user_plano_id = P.plano_id;
