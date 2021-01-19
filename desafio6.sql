CREATE VIEW faturamento_atual AS
    SELECT 
        ROUND(MIN(p.plan_value), 2) AS faturamento_minimo,
        ROUND(MAX(p.plan_value), 2) AS faturamento_maximo,
        ROUND(AVG(p.plan_value), 2) AS faturamento_medio,
        ROUND(SUM(p.plan_value), 2) AS faturamento_total
    FROM
        SpotifyClone.users AS u
            INNER JOIN
        SpotifyClone.plans AS p ON u.plan_id = p.plan_id;
