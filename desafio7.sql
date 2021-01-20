CREATE VIEW  perfil_artistas AS
SELECT art.artista_name AS artista, alb.album_name AS album, COUNT(seg.usuario_id) AS seguidores
FROM SpotifyClone.artista_usuario AS seg
INNER JOIN SpotifyClone.artista AS art ON art.artista_id = seg.artista_id
INNER JOIN SpotifyClone.album AS alb ON alb.artista_id = seg.artista_id
GROUP BY alb.album_id
ORDER BY seguidores DESC, artista, album;
