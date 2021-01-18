use SpotityClone;
CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS `usuario`,  c.nome AS `nome`
FROM usuario AS u
INNER JOIN historico AS h
ON u.id = h.usuario_id
INNER JOIN cancoes AS c
ON c.id = h.cancoes_id	
ORDER BY `usuario`, `nome`;
