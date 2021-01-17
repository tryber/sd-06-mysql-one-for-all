CREATE VIEW faturamento_atual AS
SELECT
    ROUND(MIN(mp.plan_fee), 2) faturamento_minimo,
    ROUND(MAX(mp.plan_fee), 2) faturamento_maximo,
    ROUND(AVG(mp.plan_fee), 2) faturamento_medio,
    ROUND(SUM(mp.plan_fee), 2) faturamento_total
FROM SpotifyClone.users usr
JOIN SpotifyClone.membership_plans mp
ON usr.plan_id = mp.plan_id;
