CREATE VIEW top_3_artistas AS
SELECT
a.artist_name AS 'artista',
COUNT(af.artists_following) AS 'seguidores'
FROM SpotifyClone.artists a
INNER JOIN SpotifyClone.artists_following af ON
a.artist_id = af.artists_following
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
