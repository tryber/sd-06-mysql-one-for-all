CREATE VIEW historico_reproducao_usuarios AS
SELECT SpotifyClone.users.user_name AS usuario,
m.music_name AS nome
FROM SpotifyClone.users
JOIN SpotifyClone.musics AS m;
