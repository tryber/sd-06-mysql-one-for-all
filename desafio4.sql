CREATE VIEW top_3_artistas AS
SELECT a.artista AS artista,
COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.seguidores AS s
ON a.artista_id = s.artista_id
GROUP BY a.artista_id
ORDER BY seguidores DESC, artista
LIMIT 3;
