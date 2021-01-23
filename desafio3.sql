CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.user_name AS 'usuario',
s.song_name AS 'nome'
FROM SpotifyClone.played AS p
INNER JOIN SpotifyClone.users AS u ON u.user_id = p.user_id
INNER JOIN SpotifyClone.songs AS s ON s.song_id = p.song_id
ORDER BY u.user_name, s.song_name;
