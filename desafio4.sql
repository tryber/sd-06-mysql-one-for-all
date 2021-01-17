CREATE VIEW top_3_artistas AS
SELECT a.artist AS 'Artist', COUNT(f.user_id) AS 'Followers'
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.followers AS f ON f.artist_id = a.artist_id
GROUP BY `Artist`
ORDER BY `Followers` DESC, `Artist`
LIMIT 3;