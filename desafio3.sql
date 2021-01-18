CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS `usuario`, c.nome AS `nome`
FROM SpotifyClone.usuario u 
INNER JOIN SpotifyClone.historico_reproducao hr ON hr.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancao c ON c.cancao_id = hr.cancao_id
ORDER BY `usuario`, `nome`;
