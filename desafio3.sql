CREATE VIEW historico_reproducao_usuarios AS
SELECT U.user_name AS usuario,
S.song_name AS nome
FROM SpotifyClone.users AS U,
SpotifyClone.songs AS S,
SpotifyClone.reproduction_history AS R
WHERE U.user_id = R.user_id AND S.song_id = R.song_id
ORDER BY usuario, nome;
