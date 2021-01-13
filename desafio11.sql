USE SpotifyClone;
CREATE VIEW cancoes_premium AS
SELECT 
	r.historico AS nome,
    COUNT(r.historico) AS reproducoes
FROM reproducoes r
INNER JOIN usuario u ON r.usuario_id = u.usuario_id
WHERE u.plano_id <> 1
GROUP BY nome, historico
ORDER BY nome;