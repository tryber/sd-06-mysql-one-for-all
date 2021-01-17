USE SpotifyClone;

CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.name AS usuario,
s.name AS nome
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.playback_history AS ph ON ph.user_id = u.user_id
INNER JOIN SpotifyClone.songs AS s ON s.song_id = ph.song_id
ORDER by usuario, nome ASC;

SELECT * FROM historico_reproducao_usuarios;
