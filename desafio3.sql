CREATE VIEW historico_reproducao_usuarios AS SELECT 
U.usuario_nome usuario, C.cancao_nome nome from SpotifyClone.usuarios U 
INNER JOIN SpotifyClone.historico_reproducao H ON H.usuario_id = U.usuario_id
INNER JOIN SpotifyClone.cancoes C ON C.cancao_id = H.cancao_id ORDER BY usuario, nome;
