CREATE VIEW top_2_hits_do_momento AS
SELECT Sn.song_name AS cancao,
COUNT(Re.user_id) AS reproducoes
FROM SpotifyClone.songs AS Sn,
SpotifyClone.reproduction_history AS Re
WHERE Sn.song_id = Re.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
