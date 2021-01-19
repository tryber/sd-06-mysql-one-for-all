CREATE VIEW faturamento_atual AS SELECT
ROUND(MIN(P.valor),2) faturamento_minimo, ROUND(MAX(P.valor),2) faturamento_maximo,
ROUND((SELECT SUM(P.valor) FROM SpotifyClone.planos P INNER JOIN SpotifyClone.usuarios U
ON U.user_plano_id = P.plano_id)/(SELECT COUNT(user_plano_id) FROM SpotifyClone.usuarios),2)
AS faturamento_medio,  SUM(P.valor) faturamento_total 
FROM SpotifyClone.planos P INNER JOIN SpotifyClone.usuarios U
ON U.user_plano_id = P.plano_id;
