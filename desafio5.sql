CREATE VIEW top_2_hits_do_momento AS
SELECT S.song_name AS cancao,
COUNT(R.user_id) AS reproducoes
FROM SpotifyClone.songs AS S,
SpotifyClone.reproduction_history AS R
WHERE S.song_id = R.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
