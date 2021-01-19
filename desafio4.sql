CREATE VIEW top_3_artistas AS
SELECT
a.artist_name AS 'artista',
COUNT(af.artist_id) AS 'seguidores'
FROM
SpotifyClone.artists AS a
INNER JOIN SpotifyClone.artists_following AS af ON
a.artist_id = af.artist_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
