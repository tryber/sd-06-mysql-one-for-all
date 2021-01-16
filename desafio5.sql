CREATE VIEW top_2_hits_do_momento AS
SELECT s.song AS 'cancao',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.songs AS s
JOIN SpotifyClone.reproduction_history AS rh ON (s.song_id = rh.song_id)
GROUP BY s.song, rh.song_id
ORDER BY `reproducoes` DESC, s.song ASC LIMIT 2;