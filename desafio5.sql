CREATE VIEW top_2_hits_do_momento AS
SELECT
musica.nome_musica AS 'cancao',
COUNT(usuario.nome_usuario) AS 'reproducoes'
FROM SpotifyClone.historico_reproducao AS historico
INNER JOIN SpotifyClone.musica AS musica
ON historico.musica_id = musica.musica_id
INNER JOIN SpotifyClone.usuario AS usuario
ON historico.usuario_id = usuario.usuario_id
GROUP BY `cancao`
ORDER BY
`reproducoes` DESC,
`cancao`
LIMIT 2;
