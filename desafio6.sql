CREATE VIEW faturamento_atual AS SELECT
ROUND(MIN(p.plano_valor),2) faturamento_minimo, ROUND(MAX(p.plano_valor),2) faturamento_maximo,
ROUND((SELECT SUM(p.plano_valor) FROM SpotifyClone.plano p INNER JOIN SpotifyClone.usuario u
ON u.plano_id = p.plano_id)/(SELECT COUNT(plano_id) FROM SpotifyClone.usuario),2)
AS faturamento_medio,  SUM(p.plano_valor) faturamento_total 
FROM SpotifyClone.plano p INNER JOIN SpotifyClone.usuario U
ON u.plano_id = p.plano_id;
