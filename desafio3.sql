CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario_nome AS 'usuario',
C.cancao_nome AS 'nome'
FROM SpotifyClone.usuario U
INNER JOIN SpotifyClone.historico_de_reproducoes H ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.cancoes C ON H.cancao_id = C.cancao_id
ORDER BY `usuario`, `nome`;
