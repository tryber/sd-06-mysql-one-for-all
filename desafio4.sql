CREATE VIEW top_3_artistas AS
SELECT s.singer_name AS artista,
COUNT(F.user_id) AS seguidores
FROM singers AS s
INNER JOIN following_singer AS F
ON s.singer_id = F.singer_id
GROUP BY F.singer_id
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
