CREATE VIEW faturamento_atual AS
SELECT MIN(P.price) AS 'faturamento_minimo',
max(P.price) AS 'faturamento_maximo',
ROUND(AVG(P.price), 2) AS 'faturamento_medio',
sum(P.price) AS 'faturamento_total'
FROM SpotifyClone.plan P
INNER JOIN SpotifyClone.user U
ON U.plan_id = P.id;
