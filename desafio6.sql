CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(s.subscription_cost), 2) 'faturamento_minimo',
  ROUND(MAX(s.subscription_cost), 2) 'faturamento_maximo',
  ROUND(AVG(s.subscription_cost), 2) 'faturamento_medio',
  ROUND(SUM(s.subscription_cost), 2) 'faturamento_total'
FROM Users u
  INNER JOIN Subscriptions s
    ON u.subscription_id = s.subscription_id;
