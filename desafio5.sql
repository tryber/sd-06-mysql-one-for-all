CREATE VIEW top_2_hits_do_momento AS
SELECT
s.song_name AS cancoes,
COUNT(p.song_id) AS reproducoes
FROM played as p INNER JOIN songs as s
WHERE s.song_id = p.song_id
GROUP BY s.song_name ORDER BY COUNT(p.song_id) DESC, s.song_name
LIMIT 2;
