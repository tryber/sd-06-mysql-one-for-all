CREATE VIEW faturamento_atual AS
SELECT MIN(p.valor) AS `faturamento_minimo`, MAX(p.valor) AS `faturamento_maximo`,
ROUND(SUM(p.valor) / COUNT(u.usuario_id), 2) AS `faturamento_medio`,
SUM(p.valor) AS `faturamento_total`
FROM SpotifyClone.plano p
INNER JOIN SpotifyClone.usuario u ON u.plano_id = p.plano_id;
