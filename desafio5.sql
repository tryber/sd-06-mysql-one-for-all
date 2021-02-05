CREATE VIEW top_2_hits_do_momento AS
SELECT s.song_name AS cancao,
COUNT(hist.song_id) AS reproducoes
FROM SpotifyClone.history_songs AS hist
INNER JOIN SpotifyClone.songs AS s
ON s.song_id = hist.song_id
GROUP BY s.song_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
