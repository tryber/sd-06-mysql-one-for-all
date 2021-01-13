CREATE VIEW perfil_artistas AS
SELECT 
a.artista AS artista,
alb.album AS album,
COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.seguindo_artistas AS s
INNER JOIN SpotifyClone.artistas AS a
ON a.artista_id = s.artista_id
INNER JOIN SpotifyClone.albuns as alb
ON alb.artista_id = a.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
