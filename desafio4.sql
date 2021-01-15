CREATE VIEW top_3_artistas AS
SELECT a.artista AS artista,
COUNT(s.artistas_id) AS seguidores
FROM artistas AS a
INNER JOIN usuarios_has_artistas AS s
ON a.id = s.artistas_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
