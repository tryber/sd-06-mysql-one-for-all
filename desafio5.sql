CREATE VIEW top_2_hits_do_momento AS
SELECT
    sng.song_title cancao,
    COUNT(DISTINCT ph.user_id) reproducoes
FROM SpotifyClone.songs sng
JOIN SpotifyClone.play_history ph
ON ph.song_id = sng.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
