CREATE VIEW faturamento_atual AS
SELECT MIN(P.valor) AS `faturamento_minimo`,
MAX(P.valor) AS `faturamento_maximo`,
ROUND(AVG(P.valor), 2) AS `faturamento_medio`,
ROUND(SUM(P.valor), 2) AS `faturamento_total`
FROM SpotifyClone.planos AS P, SpotifyClone.usuarios AS U
WHERE P.plano_id = U.plano_id;
