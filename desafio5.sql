CREATE VIEW top_2_hits_do_momento AS
SELECT s.song_name AS cancao,
COUNT(h.song_id) AS reproducoes
FROM musicas AS s INNER JOIN history AS h
ON h.song_id = s.song_id 
GROUP BY h.song_id ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
