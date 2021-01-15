CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(PLANS.plan_value), 2) AS faturamento_minimo,
ROUND(MAX(PLANS.plan_value), 2) AS faturamento_maximo,
ROUND(AVG(PLANS.plan_value), 2) AS faturamento_medio,
ROUND(SUM(PLANS.plan_value), 2) AS faturamento_total
FROM SpotifyClone.plans PLANS
JOIN SpotifyClone.users USERS ON PLANS.plan_id = USERS.plan_id;
