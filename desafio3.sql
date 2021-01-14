CREATE VIEW historico_reproducao_usuarios AS
SELECT U.nome_usuario AS usuario, 
C.nome_cancao AS nome
FROM usuarios U
INNER JOIN historico_execucoes HE ON HE.usuario_id = U.usuario_id
INNER JOIN cancoes C ON C.cancoes_id = HE.cancoes_id
ORDER BY usuario, nome;
