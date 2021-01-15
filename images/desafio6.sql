CREATE VIEW faturamento_atual
  AS SELECT
    MIN(s.subscription_cost) faturamento_minimo,
    MAX(s.subscription_cost) faturamento_maximo,
    ROUND(AVG(s.subscription_cost), 2) faturamento_medio,
    ROUND(SUM(s.subscription_cost))
    faturamento_total
  FROM SpotifyClone.Subscriptions s;
