CREATE VIEW faturamento_atual AS
SELECT
MIN(a.valor) AS `faturamento_minimo`,
MAX(a.valor) AS `faturamento_maximo`,
ROUND(AVG(a.valor), 2) AS `faturamento_medio`,
SUM(a.valor) AS `faturamento_total`
FROM SpotifyClone.plano AS a
JOIN SpotifyClone.usuarios AS b
ON b.plano = a.plano_id;
