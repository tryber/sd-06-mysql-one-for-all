CREATE VIEW perfil_artistas AS
SELECT
ar.artist_name AS artista,
al.album_name AS album,
COUNT(f.artist_id) AS seguidores
FROM follows as f
INNER JOIN artists AS ar ON ar.artist_id = f.artist_id
INNER JOIN albums AS al ON al.artist_id = f.artist_id
GROUP BY ar.artist_name, al.album_name ORDER BY COUNT(f.artist_id) DESC, ar.artist_name, al.album_name;
