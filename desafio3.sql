CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS usuario,
ca.nome_cancao AS nome
FROM usuarios AS u
INNER JOIN historico AS hi ON u.id = hi.usuario_id
INNER JOIN cancoes AS ca ON hi.cancao_id = ca.cancao_id
ORDER BY usuario, nome;
