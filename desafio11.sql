CREATE VIEW cancoes_premium AS
SELECT c.cancao AS `nome`,
COUNT(h.id_usuario) AS `reproducoes`
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.historico_de_reproducoes h
ON c.id_cancao = h.id_cancao
INNER JOIN SpotifyClone.usuarios u ON u.id_usuario = h.id_usuario
WHERE u.id_plano IN (2,3)
GROUP BY h.id_cancao
ORDER BY `nome`;
