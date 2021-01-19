CREATE VIEW top_2_hits_do_momento AS
SELECT so.song AS cancao,
COUNT(rh.song_id) AS reproducoes
FROM songs AS so
INNER JOIN reproduction_history AS rh
ON so.song_id = rh.song_id
GROUP BY 1
ORDER BY 2 DESC, 1 LIMIT 2;
