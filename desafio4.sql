CREATE VIEW top_3_artistas AS
SELECT a.artista AS artista,
COUNT(sa.usuario_id) AS seguidores
FROM SpotifyClone.seguindo_artistas AS sa
INNER JOIN SpotifyClone.artistas AS a ON a.artista_id = sa.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
