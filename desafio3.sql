CREATE VIEW historico_reproducao_usuarios AS
SELECT
usuario.nome_usuario AS "usuario",
musica.nome_musica AS "nome"
FROM SpotifyClone.historico_reproducao AS historico
INNER JOIN SpotifyClone.usuario AS usuario
ON historico.usuario_id = usuario.usuario_id
INNER JOIN SpotifyClone.musica AS musica
ON historico.musica_id = musica.musica_id
ORDER BY
`usuario`,
`nome`;
