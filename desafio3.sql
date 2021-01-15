CREATE VIEW historico_reproducao_usuarios AS
SELECT
a.nome AS `usuario`,
b.musica AS `nome`
FROM SpotifyClone.historico AS c
JOIN SpotifyClone.usuarios AS a
ON c.usuario = a.usuario_id
JOIN SpotifyClone.musicas AS b
ON c.musica = b.musica_id
ORDER BY `usuario`, `nome`;
