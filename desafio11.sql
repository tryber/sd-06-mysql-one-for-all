CREATE VIEW cancoes_premium AS
SELECT c.nome AS `nome`, COUNT(hr.usuario_id) AS `reproducoes`
FROM SpotifyClone.cancao c 
INNER JOIN SpotifyClone.historico_reproducao hr ON hr.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuario u ON u.usuario_id = hr.usuario_id
WHERE u.plano_id <> 1
GROUP BY `nome`
ORDER BY `nome`;
