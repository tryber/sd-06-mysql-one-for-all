CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(sub.price), 2) 'faturamento_minimo',
ROUND(MAX(sub.price), 2) 'faturamento_maximo',
ROUND(AVG(sub.price), 2) 'faturamento_medio',
ROUND(SUM(sub.price), 2) 'faturamento_total'
FROM subscriptions sub
INNER JOIN users u ON sub.id = u.subscription_id;
