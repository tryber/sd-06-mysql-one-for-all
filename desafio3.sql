CREATE VIEW historico_reproducao_usuarios AS
SELECT 
u.name AS usuario,
m.name AS nome
FROM SpotifyClone.users_songs
INNER JOIN SpotifyClone.users AS u
ON u.id_user = users_songs.id_user
INNER JOIN SpotifyClone.songs AS m
ON m.id_song = users_songs.id_song
ORDER BY usuario ASC, nome ASC;
