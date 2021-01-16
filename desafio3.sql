CREATE VIEW historico_reproducao_usuarios AS
SELECT usuario AS usuario, cancao AS nome
FROM historico_execucoes AS hr
INNER JOIN cancoes AS c ON hr.cancao_id = c.cancao_id
INNER JOIN usuarios AS u ON hr.usuario_id = u.usuario_id
ORDER BY usuario, nome;
