CREATE VIEW top_3_artistas AS
SELECT ar.artista,
COUNT(fo.artista_id) AS seguidores
FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.follow fo
ON ar.artista_id = fo.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
