CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome,
COUNT(hr.cancoes_id) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes hr
INNER JOIN SpotifyClone.cancoes c ON c.cancoes_id = hr.cancoes_id
INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = hr.usuario_id
WHERE u.plano_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
