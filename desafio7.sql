CREATE VIEW perfil_artistas AS
SELECT a.artist AS artista,
al.album AS album,
COUNT(f.user_id) AS seguidores
FROM SpotifyClone.followers AS f
INNER JOIN SpotifyClone.artists AS a
ON a.id = f.artist_id
INNER JOIN SpotifyClone.albums AS al
ON al.artist_id = a.id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;