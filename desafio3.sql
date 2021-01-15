CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS `usuario`, c.cancao AS `nome`
FROM SpotifyClone.usuarios as u
INNER JOIN SpotifyClone.historico_de_reproducoes h on u.id_usuario = h.id_usuario
INNER JOIN SpotifyClone.cancoes c on h.id_cancao = c.id_cancao
ORDER BY `usuario`, `nome`;
