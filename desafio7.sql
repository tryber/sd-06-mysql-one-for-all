CREATE VIEW perfil_artistas AS
SELECT
artistas.artista AS artista,
albums.album AS album,
COUNT(seguidores.usuario_id) AS seguidores
FROM SpotifyClone.seguidores AS seguidores
INNER JOIN SpotifyClone.artistas AS artistas
ON artistas.artista_id = seguidores.artista_id
INNER JOIN SpotifyClone.albums AS albums
ON albums.artista_id = artistas.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
