CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario_nome AS `usuario`,
C.cancao AS `nome`
FROM SpotifyClone.usuarios AS U, SpotifyClone.cancoes AS C, SpotifyClone.historico_reproducoes AS HR
WHERE U.usuario_id = HR.usuario_id AND C.cancao_id = HR.cancao_id
ORDER BY `usuario`, `nome`;
