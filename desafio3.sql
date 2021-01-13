CREATE VIEW historico_reproducao_usuarios AS
SELECT usuarios.usuario AS usuario,
musicas.musica AS nome
FROM SpotifyClone.historico
INNER JOIN SpotifyClone.usuarios AS usuarios
ON usuarios.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.musicas AS musicas
ON musicas.musica_id = historico.musica_id
ORDER BY usuario ASC, nome ASC;
