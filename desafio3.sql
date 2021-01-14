DROP VIEW IF EXISTS historico_reproducao_usuarios;

CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.nome AS usuario, c.nome AS nome
FROM reproducao AS r
INNER JOIN usuario AS u ON r.usuario_id = u.usuario_id
INNER JOIN cancao AS c ON r.cancao_id = c.cancao_id
ORDER BY u.nome, c.nome;

SELECT * FROM historico_reproducao_usuarios;
