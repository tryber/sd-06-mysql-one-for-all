CREATE VIEW historico_reproducao_usuarios AS
SELECT SpotifyClone.users.user_name AS usuario,
SpotifyClone.musics.music_name AS nome
FROM histories
JOIN users
ON SpotifyClone.users.user_id = SpotifyClone.histories.user_id
JOIN musics
ON SpotifyClone.musics.music_id = SpotifyClone.histories.music_id
ORDER BY usuario, nome;
