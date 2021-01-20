CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario_name AS 'usuario', c.cancoes_name AS 'nome'
FROM SpotifyClone.historico
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancoes_id = historico.cancoes_id
ORDER BY `usuario`, `nome`;
