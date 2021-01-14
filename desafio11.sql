CREATE VIEW cancoes_premium AS
SELECT
c.nome AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.historico h
INNER JOIN SpotifyClone.cancoes c
ON h.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios u
ON h.usuario_id = u.usuario_id
WHERE u.plano_id <> 1
GROUP BY h.cancao_id
ORDER BY nome;
