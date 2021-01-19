CREATE VIEW perfil_artistas AS
SELECT s.singer_name AS artista,
al.album AS album,
COUNT(f.user_id) AS seguidores
FROM singers AS s INNER JOIN albuns AS al
ON al.singer_id = s.singer_id INNER JOIN following_singer AS f
ON f.singer_id = s.singer_id
GROUP BY al.album_id ORDER BY seguidores DESC, artista ASC, album ASC;
