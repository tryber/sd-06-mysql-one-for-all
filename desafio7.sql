CREATE VIEW perfil_artistas AS
SELECT a.artist_name AS artista, alb.album_name AS album, COUNT(alb.album_id) AS seguidores
FROM SpotifyClone.albuns as alb
INNER JOIN SpotifyClone.artists AS a
ON alb.artist_id = a.artist_id
INNER JOIN SpotifyClone.followers AS f
ON f.artist_id = alb.artist_id
GROUP BY alb.album_id
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
