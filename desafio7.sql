CREATE VIEW perfil_artistas AS SELECT
ar.artist_name AS `artista`,
al.album_name AS `album`,
COUNT(f.artist_id) AS `seguidores`
FROM SpotifyClone.Artists AS ar
INNER JOIN SpotifyClone.Followers AS f
ON f.artist_id = ar.artist_id
INNER JOIN SpotifyClone.Albums AS al
ON ar.artist_id = al.artist_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC,`artista`, `album`;
