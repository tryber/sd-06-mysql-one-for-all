CREATE VIEW historico_reproducao_usuarios AS
SELECT
user.nome AS usuario,
song.nome AS nome
FROM SpotifyClone.historico_de_reproducoes historico
INNER JOIN SpotifyClone.usuario user ON historico.usuario_id = user.usuario_id
INNER JOIN SpotifyClone.cancoes song ON historico.cancoes_id = song.cancoes_id
ORDER BY usuario, nome;