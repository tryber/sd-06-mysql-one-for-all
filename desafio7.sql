CREATE VIEW perfil_artistas AS
SELECT art.nome AS artista,
alb.nome AS album,
(
SELECT COUNT(*)
FROM SpotifyClone.seguindo
WHERE artista_id = alb.artista_id
) AS seguidores
FROM SpotifyClone.albums alb
INNER JOIN SpotifyClone.artistas art
ON alb.artista_id = art.artista_id
ORDER BY seguidores DESC, artista, album;
