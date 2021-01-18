CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.name AS usuario,
s.name AS nome
FROM users AS u
INNER JOIN playback_history AS ph
ON ph.user_id = u.user_id
INNER JOIN songs AS s ON s.song_id = ph.song_id
ORDER by usuario, nome ASC;
