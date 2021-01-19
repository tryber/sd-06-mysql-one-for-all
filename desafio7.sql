CREATE VIEW perfil_artistas AS
SELECT ar.artista,
al.album_nome AS album,
COUNT(ar.artista_id) AS seguidores
FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.albuns al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.follow fo
ON fo.artista_id = al.artista_id
GROUP BY al.album_id
ORDER BY seguidores DESC, artista, album;
