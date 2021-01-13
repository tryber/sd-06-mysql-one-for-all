CREATE VIEW top_2_hits_do_momento AS
SELECT SpotifyClone.song.song_name AS cancao,
COUNT(SpotifyClone.song.song_id) AS reproducoes
FROM historic
INNER JOIN song
ON SpotifyClone.song.song_id = SpotifyClone.historic.song_id
GROUP BY SpotifyClone.song.song_name
ORDER BY reproducoes DESC, artista ASC
LIMIT 2;
