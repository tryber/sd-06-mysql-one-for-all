CREATE VIEW faturamento_atual AS
SELECT
  MIN(ROUND(p.plan_value, 2)) AS "faturamento_minimo",
  MAX(ROUND(p.plan_value, 2)) AS "faturamento_maximo",
  AVG(ROUND(p.plan_value, 2)) AS "faturamento_medio",
  SUM(ROUND(p.plan_value, 2)) AS "faturamento_total"
FROM SpotifyClone.plans AS p
  INNER JOIN SpotifyClone.users AS u
  ON p.plan_id = u.plan_id;
