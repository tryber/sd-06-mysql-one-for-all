CREATE VIEW historico_reproducao_usuarios AS
SELECT
U.nome_usuario AS usuario,
C.nome_cancao AS nome
FROM usuarios_cancoes AS UC
INNER JOIN usuarios AS U
ON U.usuario_id = UC.usuario_id
INNER JOIN cancoes AS C
ON C.cancao_id = UC.cancao_id
ORDER BY usuario, nome;
