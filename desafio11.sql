CREATE VIEW cancoes_premium AS
SELECT 
m.musica AS nome,
COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.musicas AS m
ON m.musica_id = h.musica_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario_id
WHERE u.plano_id IN (2,3)
GROUP BY nome
ORDER BY nome ASC;
