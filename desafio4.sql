CREATE VIEW top_3_artistas AS
SELECT a.artist_name AS artista,
COUNT(f.user_id) AS seguidores
FROM Artists AS a
INNER JOIN Users_Following_Artists AS f
ON a.artist_id = f.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
