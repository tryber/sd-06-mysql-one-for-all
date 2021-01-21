CREATE VIEW top_3_artistas AS
SELECT
a.artista AS artista,
COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS a
JOIN SpotifyClone.seguindo_artista AS s
ON(a.id = s.artista_id)
GROUP BY s.artista_id
ORDER BY 2 DESC, 1 ASC
LIMIT 2;
