CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS `usuario`, c.cancao AS `nome`
FROM SpotifyClone.usuario u
INNER JOIN SpotifyClone.historico_de_reproducoes h ON u.usuario_id=h.usuario_id
INNER JOIN SpotifyClone.cancoes c ON h.cancao_id=c.cancao_id
ORDER BY `usuario`, `nome`;
