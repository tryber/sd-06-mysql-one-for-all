CREATE VIEW top_3_artistas AS
SELECT
A.name AS 'artista',
COUNT(F.user_id) AS 'seguidores'
FROM SpotifyClone.artist A
INNER JOIN SpotifyClone.following F
ON A.id = F.artist_id
GROUP BY F.artist_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
