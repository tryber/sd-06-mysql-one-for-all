CREATE VIEW top_2_hits_do_momento AS
SELECT s.song AS cancao,
COUNT(h.user_id) AS reproducoes
FROM SpotifyClone.historic AS h
JOIN SpotifyClone.songs AS s
ON s.id = h.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
