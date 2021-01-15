CREATE VIEW historico_reproducao_usuarios AS 
SELECT
u.nome AS usuario,
c.cancao AS nome
FROM SpotifyClone.usuarios AS u
JOIN SpotifyClone.historico_de_reproducao AS h
ON(h.usuario_id = u.id)
JOIN SpotifyClone.cancoes AS c
ON(h.cancao_id = c.id)
ORDER BY 1, 2;
