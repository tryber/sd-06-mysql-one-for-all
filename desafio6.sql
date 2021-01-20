CREATE VIEW faturamento_atual AS SELECT
ROUND(MIN(subscriptions.subscription_cost),2) AS `faturamento_minimo`,
ROUND(MAX(subscriptions.subscription_cost),2) AS `faturamento_maximo`,
ROUND(AVG(subscriptions.subscription_cost),2) AS `faturamento_medio`,
ROUND(SUM(subscriptions.subscription_cost),2) AS `faturamento_total`
FROM users INNER JOIN  subscriptions ON users.subscription_id = subscriptions.subscription_id;
