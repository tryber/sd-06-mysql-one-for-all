CREATE VIEW cancoes_premium AS
SELECT SpotifyClone.song.song_name AS nome,
COUNT(SpotifyClone.historic.user_id) AS reproducoes
FROM SpotifyClone.historic
INNER JOIN SpotifyClone.song
ON SpotifyClone.song.song_id = SpotifyClone.historic.song_id
INNER JOIN SpotifyClone.users
ON SpotifyClone.users.user_id = SpotifyClone.historic.user_id
WHERE SpotifyClone.users.plan_id IN (2,3)
GROUP BY nome
ORDER BY nome ASC;
