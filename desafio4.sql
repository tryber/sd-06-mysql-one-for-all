CREATE VIEW top_3_artistas AS SELECT
a.artista_name AS artista,
COUNT(u.usuario_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.artista_usuario u
ON a.artista_id = u.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista LIMIT 3;
