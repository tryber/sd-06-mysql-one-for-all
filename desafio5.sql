CREATE VIEW top_2_hits_do_momento AS
SELECT
m.name AS cancao,
COUNT(s.id_user) AS reproducoes
FROM SpotifyClone.users_songs AS s
INNER JOIN SpotifyClone.songs AS m
ON m.id_song = s.id_song
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
