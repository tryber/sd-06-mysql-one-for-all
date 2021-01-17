CREATE VIEW historico_reproducao_usuarios AS
SELECT users.usuario AS usuario, can.cancao AS nome
from SpotifyClone.reproducoes as rep 
INNER JOIN SpotifyClone.usuarios AS users ON users.usuario_id = rep.usuario_id
INNER JOIN SpotifyClone.cancoes AS can ON can.cancao_id = rep.cancao_id
ORDER BY usuario, nome;
