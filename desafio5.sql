CREATE VIEW top_2_hits_do_momento AS
SELECT s.name AS cancao,
COUNT(s.song_id) AS reproducoes
FROM songs AS s
INNER JOIN playback_history AS ph ON ph.song_id = s.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
