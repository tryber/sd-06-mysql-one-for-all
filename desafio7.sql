CREATE VIEW perfil_artistas AS 
SELECT
art.artista_nome AS artista,
alb.album_nome AS album,
COUNT(DISTINCT seg.usuario_id) AS seguidores
FROM SpotifyClone.table_seguindo AS seg
INNER JOIN SpotifyClone.table_artistas AS art
ON art.artista_id = seg.artista_id
INNER JOIN SpotifyClone.table_albuns AS alb
ON alb.artista_id = art.artista_id
GROUP BY artista, album
ORDER by seguidores DESC, artista, album;
