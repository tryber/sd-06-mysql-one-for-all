CREATE VIEW top_3_artistas AS
SELECT A.artist_name AS artista,
COUNT(F.user_id) AS seguidores
FROM SpotifyClone.artists AS A,
SpotifyClone.followers AS F
WHERE A.artist_id = F.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
