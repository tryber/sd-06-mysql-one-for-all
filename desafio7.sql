CREATE VIEW perfil_artistas AS
SELECT a.artist_name AS artista,
al.album_name AS album,
COUNT(ufa.user_id) AS seguidores
FROM Artists AS a 
INNER JOIN Albuns AS al
ON al.artist_id = a.artist_id
INNER JOIN Users_Following_Artists AS ufa
ON ufa.artist_id = a.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
