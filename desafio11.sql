CREATE VIEW SpotifyClone.cancoes_premium AS 
SELECT c.nome `nome`, COUNT(hr.usuario_id) `reproducoes`
FROM SpotifyClone.historico_de_reproducoes AS hr
JOIN SpotifyClone.cancoes AS c ON c.cancao_id = hr.cancao_id
JOIN SpotifyClone.usuarios AS u ON hr.usuario_id = u.usuario_id
WHERE u.plano_id IN(2, 3)
GROUP BY `nome`
ORDER BY `nome`;
