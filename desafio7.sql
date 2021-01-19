CREATE VIEW perfil_artistas AS
SELECT ar.artist AS artista,
al.album AS album,
COUNT(uf.user_id) AS seguidores
FROM artists AS ar
INNER JOIN albums AS al
ON al.artist_id = ar.artist_id
INNER JOIN user_following AS uf
ON al.artist_id = uf.artist_id
GROUP BY al.album_id
ORDER BY 3 DESC, 1, 2;
