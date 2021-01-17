CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario_nome AS usuario, M.nome AS nome
FROM historico as H
INNER JOIN usuarios AS U
ON H.usuario_id = U.usuario_id
INNER JOIN musicas AS M
ON H.musica_id = M.musica_id
ORDER BY usuario, nome;
