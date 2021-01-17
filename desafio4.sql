CREATE VIEW top_3_artistas AS
SELECT
a.name AS artista,
COUNT(f.artist_id) AS seguidores
FROM artists AS a
INNER JOIN followers AS f
ON a.artist_id = f.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
