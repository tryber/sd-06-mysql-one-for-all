CREATE VIEW historico_reproducao_usuarios AS
SELECT t1.usuario AS usuario, t3.cancao AS nome
FROM usuarios AS t1
INNER JOIN usuarios_has_cancoes AS t2
ON t1.id = t2.usuarios_id
INNER JOIN cancoes AS t3
ON t2.cancoes_id = t3.id
ORDER BY usuario, nome;
