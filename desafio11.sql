CREATE VIEW cancoes_premium AS
SELECT s.song_name AS nome, COUNT(hist.user_id) AS reproducoes
FROM SpotifyClone.history_songs AS hist
INNER JOIN SpotifyClone.songs AS s
ON hist.song_id = s.song_id
INNER JOIN SpotifyClone.users AS u
ON hist.user_id = u.user_id
WHERE hist.song_id = s.song_id AND u.plan_id BETWEEN 2 AND 3
GROUP BY nome
ORDER BY nome;
