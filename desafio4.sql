CREATE VIEW top_3_artistas AS
SELECT ar.artist AS artista,
COUNT(uf.user_id) AS seguidores
FROM user_following AS uf
INNER JOIN artists AS ar
ON ar.artist_id = uf.artist_id
GROUP BY 1
ORDER BY 2 DESC,
1 LIMIT 3;
 