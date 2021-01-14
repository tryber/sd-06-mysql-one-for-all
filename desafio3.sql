CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.usuario AS `usuario`,
c.cancao AS `nome`
FROM historico_reproducoes AS hr
INNER JOIN usuarios AS u ON u.usuario_id = hr.usuario_id
INNER JOIN cancoes AS c ON c.cancao_id = hr.cancao_id
ORDER BY `usuario`, `nome`;
