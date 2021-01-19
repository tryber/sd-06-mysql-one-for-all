CREATE VIEW top_3_artistas AS
SELECT a.artist AS artista,
COUNT(f.user_id) AS seguidores
FROM SpotifyClone.followers AS f
JOIN SpotifyClone.artists AS a
ON a.id = f.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
