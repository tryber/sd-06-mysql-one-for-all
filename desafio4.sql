CREATE VIEW top_3_artistas AS
SELECT artistas.artista AS artistas,
COUNT(seguidores.usuario_id) AS seguidores
FROM SpotifyClone.seguidores AS seguidores
INNER JOIN SpotifyClone.artistas AS artistas
ON artistas.artista_id = seguidores.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
