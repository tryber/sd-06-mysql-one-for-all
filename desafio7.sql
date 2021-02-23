CREATE VIEW perfil_artistas AS
SELECT
ar.name AS 'artista',
al.name AS 'album',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.following f
INNER JOIN SpotifyClone.artist ar
ON f.artist_id = ar.id
INNER JOIN SpotifyClone.album al
ON f.artist_id = al.artist_id
GROUP BY al.name, ar.name
ORDER BY `seguidores` DESC, `artista`, `album`;
 