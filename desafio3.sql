CREATE VIEW historico_reproducao_usuarios AS
SELECT SpotifyClone.users.user_name AS usuario,
SpotifyClone.song.song_name AS nome
FROM historic
INNER JOIN users
ON SpotifyClone.users.user_id = SpotifyClone.historic.user_id
INNER JOIN song
ON SpotifyClone.song.song_id = SpotifyClone.historic.song_id
ORDER BY usuario;
