CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(Preco.price), 2) AS faturamento_minimo,
ROUND(MAX(Preco.price), 2) AS faturamento_maximo,
ROUND(AVG(Preco.price), 2) AS faturamento_medio,
ROUND(SUM(Preco.price), 2) AS faturamento_total
FROM SpotifyClone.plans AS Preco,
SpotifyClone.users as U
WHERE U.plan_id = Preco.plan_id;
