CREATE VIEW perfil_artistas AS
SELECT
art.name AS artista,
alb.title AS album,
COUNT(seg.id_user) AS seguidores
FROM SpotifyClone.users_artists AS seg
INNER JOIN SpotifyClone.artists AS art
ON art.id_artist = seg.id_artist
INNER JOIN SpotifyClone.albuns AS alb
ON alb.id_artist = art.id_artist
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
