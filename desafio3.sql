CREATE VIEW historico_reproducao_usuarios AS
SELECT U.name AS 'usuario',
M.name AS 'nome'
FROM SpotifyClone.history H
INNER JOIN SpotifyClone.user U
ON H.user_id = U.id
INNER JOIN SpotifyClone.music M
ON H.music_id = M.id
ORDER BY `usuario`, `nome`;
