CREATE VIEW faturamento_atual AS SELECT
ROUND(MIN(p.valor_plano), 2) AS `faturamento_minimo`,
ROUND(MAX(p.valor_plano), 2) AS `faturamento_maximo`,
ROUND(AVG(p.valor_plano), 2) AS `faturamento_medio`,
ROUND(sum(p.valor_plano), 2)
FROM SpotifyClone.usuarios AS u
JOIN SpotifyClone.plano AS p ON u.plano_id = p.plano_id;
