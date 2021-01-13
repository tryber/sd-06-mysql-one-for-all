CREATE VIEW cancoes_premium AS
SELECT 
c.cancao AS nome,
COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario_id
WHERE u.plano_id IN (2,3)
GROUP BY nome
ORDER BY nome ASC;
