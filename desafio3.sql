CREATE VIEW historico_reproducao_usuarios AS
SELECT U.nome_usuario AS usuario, 
C.nome_cancao AS nome
FROM SpotifyClone.usuarios U
INNER JOIN SpotifyClone.historico_execucoes HE ON HE.usuario_id = U.usuario_id
INNER JOIN SpotifyClone.cancoes C ON C.cancoes_id = HE.cancoes_id
ORDER BY usuario, nome;
