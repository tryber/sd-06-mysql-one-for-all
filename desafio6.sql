CREATE VIEW faturamento_atual AS SELECT
CONCAT(MIN(P.valor),'.','00') faturamento_minimo, CONVERT(ROUND(MAX(P.valor),2), CHARACTER) faturamento_maximo,
CONVERT(ROUND((SELECT SUM(P.valor) FROM SpotifyClone.planos P INNER JOIN SpotifyClone.usuarios U
ON U.user_plano_id = P.plano_id)/(SELECT COUNT(user_plano_id) FROM SpotifyClone.usuarios),2), CHARACTER)
AS faturamento_medio,  CONVERT(SUM(P.valor), CHARACTER) faturamento_total 
FROM SpotifyClone.planos P INNER JOIN SpotifyClone.usuarios U
ON U.user_plano_id = P.plano_id;
