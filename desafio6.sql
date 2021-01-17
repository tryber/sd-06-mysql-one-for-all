CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(s.subscription_cost),2) AS `faturamento_minimo`,
ROUND(MAX(s.subscription_cost),2) AS `faturamento_maximo`,
ROUND(AVG(s.subscription_cost),2) AS `faturamento_medio`,
ROUND(SUM(s.subscription_cost),2) AS `faturamento_total`
FROM SpotifyClone.subscriptions AS s
INNER JOIN SpotifyClone.users AS u
ON u.plan_id = s.plan_id;
