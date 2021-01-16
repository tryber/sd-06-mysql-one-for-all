CREATE VIEW top_2_hits_do_momento AS
SELECT s.song_name AS cancao,
COUNT(r.song_id) AS reproducoes
FROM Songs AS s
INNER JOIN Users_Reprod_History AS r 
ON r.song_id = s.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao 
LIMIT 2;
