CREATE VIEW faturamento_atual AS
    SELECT MIN(s.subscription_cost) AS faturamento_minimo,
        MAX(s.subscription_cost) AS faturamento_maximo,
        ROUND(AVG(s.subscription_cost), 2) AS faturamento_medio,
        SUM(s.subscription_cost) AS faturamento_total
    FROM Subscriptions AS s
        INNER JOIN Users AS u
            ON u.subscription_id = s.subscription_id;
