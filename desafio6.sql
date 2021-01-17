CREATE VIEW faturamento_atual AS
SELECT
  ROUND(MIN(c.valor_plano), 2) AS faturamento_minimo,
  ROUND(MAX(c.valor_plano), 2) AS faturamento_maximo,
  ROUND((SUM(c.associados * c.valor_plano) / SUM(c.associados)), 2) AS faturamento_medio,
  ROUND(SUM(c.associados * c.valor_plano), 2) AS faturamento_total
FROM
  (
    SELECT COUNT(*) AS associados, valor_plano
    FROM SpotifyClone.planos AS p
      INNER JOIN SpotifyClone.usuarios AS u
        ON u.plano_associado = p.id_plano
    GROUP BY u.plano_associado
  ) AS c;
