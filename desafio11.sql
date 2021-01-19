CREATE VIEW cancoes_premium AS
SELECT
s.song AS 'nome',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.songs_played sp
LEFT JOIN SpotifyClone.songs s ON
s.song_id = sp.song_played
WHERE sp.user_id IN (
SELECT user_id FROM SpotifyClone.users WHERE plan_id <> 1)
GROUP BY `nome`
ORDER BY `nome` ASC;
