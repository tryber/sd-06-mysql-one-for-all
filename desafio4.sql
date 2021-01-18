CREATE VIEW top_3_artistas AS
SELECT art.song_name AS artista,
COUNT(seg.user_id) AS seguidores
FROM singers AS art 
INNER JOIN following_singer AS seg
ON art.singer_id = seg.singer_id
GROUP BY seg.singer_id ORDER BY seguidores 
DESC, artista ASC LIMIT 3;
