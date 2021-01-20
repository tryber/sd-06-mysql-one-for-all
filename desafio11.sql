CREATE VIEW cancoes_premium AS
SELECT c.cancoes_name AS `nome`,
COUNT(h.usuario_id) AS `reproducoes`
FROM spotifyclone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON c.cancoes_id=h.cancoes_id
INNER JOIN SpotifyClone.usuario AS u ON u.usuario_id=h.usuario_id
WHERE u.plano_id IN (2,3)
GROUP BY h.cancoes_id
ORDER BY `nome`;
