CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS usuario, 
c.cancao AS nome
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr ON hr.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c ON c.cancoes_id = hr.cancoes_id
ORDER BY usuario, nome;
