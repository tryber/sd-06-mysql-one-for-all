CREATE VIEW perfil_artistas 
AS SELECT
a.artist_name AS `artista`,
al.album_name AS `album`,
COUNT(f.artist_id) AS `seguidores`
FROM SpotifyClone.Artists AS a
INNER JOIN SpotifyClone.Followers AS f
ON f.artist_id = a.artist_id
INNER JOIN SpotifyClone.Albums AS al
ON a.artist_id = al.artist_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC,`artista`, `album`;
