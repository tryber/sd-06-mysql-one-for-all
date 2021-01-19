CREATE VIEW faturamento_atual AS
  SELECT
    ROUND(MIN(sub.price), 2) AS faturamento_minimo,
    ROUND(MAX(sub.price), 2) AS faturamento_maximo,
    ROUND(AVG(sub.price), 2) AS faturamento_medio,
    ROUND(SUM(sub.price), 2) AS faturamento_total
  FROM
    users AS u
  INNER JOIN subscriptions AS sub
    ON u.subscription_id = sub.id;
