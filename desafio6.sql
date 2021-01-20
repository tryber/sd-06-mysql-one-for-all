CREATE VIEW faturamento_atual AS SELECT
CONCAT(MIN(p.plano_valor),'.','00') AS `faturamento_minimo`,
CONVERT(ROUND(MAX(p.plano_valor),2), character) AS `faturamento_maximo`,
convert(ROUND((SELECT SUM(p.plano_valor) FROM SpotifyClone.plano p
INNER JOIN SpotifyClone.usuario u ON u.plano_id = p.plano_id)/(SELECT COUNT(plano_id) FROM SpotifyClone.usuario),2), character)
AS `faturamento_medio`, CONVERT(SUM(p.plano_valor), CHARACTER) AS `faturamento_total`
FROM SpotifyClone.plano p INNER JOIN SpotifyClone.usuario U
ON u.plano_id = p.plano_id;
