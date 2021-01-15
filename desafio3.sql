CREATE VIEW historico_reproducao_usuarios AS
SELECT USER.user_name AS usuario, SONG.song_name AS nome
FROM SpotifyClone.users_history_songs HISTORY
JOIN SpotifyClone.songs SONG ON HISTORY.song_id = SONG.song_id
JOIN SpotifyClone.users USER ON HISTORY.user_id = USER.user_id
ORDER BY usuario, nome;
