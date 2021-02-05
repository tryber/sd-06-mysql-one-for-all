CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user_name AS usuario, s.song_name AS nome
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history_songs AS hist
ON u.user_id = hist.user_id
INNER JOIN SpotifyClone.songs AS s
ON hist.song_id = s.song_id
ORDER BY `usuario`, `nome`;
