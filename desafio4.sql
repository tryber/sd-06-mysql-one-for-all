CREATE VIEW top_3_artistas AS
SELECT
a.artista,
COUNT(s.artista_id) AS `seguidores`
FROM artistas a
INNER JOIN seguindo_artistas s ON a.artista_id = s.artista_id
GROUP BY a.artista
ORDER BY `seguidores` DESC, a.artista ASC
LIMIT 3;
