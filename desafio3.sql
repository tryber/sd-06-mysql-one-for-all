CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.usuario,
c.cancao AS `nome`
FROM usuarios u
INNER JOIN historico_de_reproducoes hr ON u.usuario_id = hr.usuario_id
INNER JOIN cancoes c ON hr.cancao_id = c.cancao_id
ORDER BY u.usuario, `nome`;
