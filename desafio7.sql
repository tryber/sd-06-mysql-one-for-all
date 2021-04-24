CREATE VIEW perfil_artistas AS
SELECT
a.artista AS 'artista',
ab.album AS 'album',
COUNT(s.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albums AS ab ON ab.artista_id = a.artista_id
INNER JOIN SpotifyClone.seguidores AS s ON s.artista_id = a.artista_id
GROUP BY ab.album_id
ORDER BY `seguidores` DESC, `artista`, `album`;
