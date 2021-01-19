CREATE VIEW top_3_artistas AS
SELECT 
a.name AS artista,
COUNT(s.id_user) AS seguidores
FROM SpotifyClone.users_artists AS s
INNER JOIN SpotifyClone.artists AS a
ON a.id_artist = s.id_artist
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
