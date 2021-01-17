CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(SpotifyClone.subscriptions.subscription_cost),2) AS `faturamento_minimo`,
ROUND(MAX(SpotifyClone.subscriptions.subscription_cost),2) AS `faturamento_maximo`,
ROUND(AVG(SpotifyClone.subscriptions.subscription_cost),2) AS `faturamento_medio`,
ROUND(SUM(SpotifyClone.subscriptions.subscription_cost),2) AS `faturamento_total`
FROM SpotifyClone.users
INNER JOIN  SpotifyClone.subscriptions
ON SpotifyClone.users.plan_id = SpotifyClone.subscriptions.plan_id;
