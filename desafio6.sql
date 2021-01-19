CREATE VIEW faturamento_atual AS; SELECT
CONCAT(MIN(P.valor),'.','00') faturamento_minimo, CONCAT(ROUND(MAX(P.valor),2)) faturamento_maximo,
CONCAT(ROUND((SELECT SUM(P.valor) FROM SpotifyClone.planos P INNER JOIN SpotifyClone.usuarios U
ON U.user_plano_id = P.plano_id)/(SELECT COUNT(user_plano_id) FROM SpotifyClone.usuarios),2))
AS faturamento_medio,  CONVERT(SUM(P.valor), char(5)) faturamento_total 
FROM SpotifyClone.planos P INNER JOIN SpotifyClone.usuarios U
ON U.user_plano_id = P.plano_id;
