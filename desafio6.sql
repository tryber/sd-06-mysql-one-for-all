CREATE VIEW faturamento_atual AS
    SELECT 
        CAST(MIN(p.plan_value) AS DECIMAL (50 , 2 )) AS faturamento_minimo,
        CAST(MAX(p.plan_value) AS DECIMAL (50 , 2 )) AS faturamento_maximo,
        CAST(AVG(p.plan_value) AS DECIMAL (50 , 2 )) AS faturamento_medio,
        CAST(SUM(p.plan_value) AS DECIMAL (50 , 2 )) AS faturamento_total
    FROM
        SpotifyClone.users AS u
            INNER JOIN
        SpotifyClone.plans AS p ON u.plan_id = p.plan_id;
