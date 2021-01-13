CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.usuario,
c.cancao AS `nome`
FROM spotifyclone.usuarios u
INNER JOIN spotifyclone.historico_de_reproducoes hr ON u.usuario_id = hr.usuario_id
INNER JOIN spotifyclone.cancoes c ON hr.cancao_id = c.cancao_id
ORDER BY u.usuario, `nome`;
