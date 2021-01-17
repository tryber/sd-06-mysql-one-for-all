CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario_nome AS usuario, M.nome AS nome
FROM historico as H
INNER JOIN usuarios AS U
ON U.usuario_id = H.usuario_id
INNER JOIN musicas AS M
ON M.musica_id = H.musica_id
ORDER BY usuario, nome;
