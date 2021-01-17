CREATE VIEW perfil_artistas AS
SELECT a.artist AS 'artista',
al.album AS 'album',
COUNT(f.user_id) AS 'seguidores'
FROM SpotifyClone.followers AS f
INNER JOIN SpotifyClone.artists AS a ON a.artist_id = f.artist_id
INNER JOIN SpotifyClone.albums as al ON al.artist_id = a.artist_id
GROUP BY al.album, a.artist
ORDER BY `seguidores` DESC, `artista`, `album`;
