CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome_usuario AS usuario, c.nome_cancao AS nome
FROM SpotifyClone.historico_de_reproducao AS hdr
INNER JOIN SpotifyClone.usuario AS u ON hdr.id_usuario = u.id
INNER JOIN SpotifyClone.cancao AS c ON hdr.id_cancao= c.id
ORDER BY usuario, nome;
