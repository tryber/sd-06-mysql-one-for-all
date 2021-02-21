CREATE VIEW faturamento_atual AS
SELECT
  ROUND(MIN(P.preco_plano), 2) AS `faturamento_minimo`,
  ROUND(MAX(P.preco_plano), 2) AS `faturamento_maximo`,
  ROUND(AVG(P.preco_plano), 2) AS `faturamento_medio`,
  ROUND(SUM(P.preco_plano), 2) AS `faturamento_total`
FROM SpotifyClone.usuario AS U
INNER JOIN SpotifyClone.plano AS P ON U.plano_id = P.plano_id;
