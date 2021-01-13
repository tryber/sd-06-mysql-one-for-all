CREATE VIEW cancoes_premium AS
SELECT c.cancao AS `nome`,
COUNT(h.usuario_id) AS `reproducoes`
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.historico_de_reproducoes h
ON c.cancao_id=h.cancao_id
INNER JOIN SpotifyClone.usuario u ON u.usuario_id=h.usuario_id
WHERE u.plano_id IN (2,3)
GROUP BY h.cancao_id
ORDER BY `nome`;
