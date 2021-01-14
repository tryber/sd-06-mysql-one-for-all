CREATE VIEW faturamento_atual AS
SELECT
CAST(MIN(p.valor) AS DECIMAL (5,2)) AS faturamento_minimo,
CAST(MAX(p.valor) AS DECIMAL (5,2)) AS faturamento_maximo,
CAST(AVG(p.valor) AS DECIMAL (5,2)) AS faturamento_medio,
CAST(SUM(p.valor) AS DECIMAL (5,2)) AS faturamento_total
FROM SpotifyClone.plano as p, SpotifyClone.usuario as u
WHERE u.plano_id = p.plano_id;
