USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
SELECT 
u.nome AS usuario,
r.historico AS nome
FROM usuario AS u
INNER JOIN reproducoes AS r ON u.usuario_id = r.usuario_id
ORDER BY usuario, nome;
