CREATE VIEW top_3_artistas AS 
SELECT
ar.artist_name AS artista,
COUNT(ar.artist_id) AS seguidores
FROM follows AS f INNER JOIN artists AS ar ON ar.artist_id = f.artist_id
GROUP BY ar.artist_name ORDER BY COUNT(ar.artist_id) DESC, ar.artist_name
LIMIT 3;
