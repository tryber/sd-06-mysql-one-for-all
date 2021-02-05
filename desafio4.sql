CREATE VIEW top_3_artistas AS
SELECT a.artist_name as artista, COUNT(f.user_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.followers AS f
ON a.artist_id = f.artist_id
GROUP BY a.artist_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
