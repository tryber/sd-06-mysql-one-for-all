CREATE VIEW cancoes_premium AS
SELECT 
c.cancao AS nome,
COUNT(r.cancao_id) AS reproducoes
FROM reproducoes r
INNER JOIN usuario u ON r.usuario_id = u.usuario_id
INNER JOIN cancoes c ON r.cancao_id = c.cancao_id
WHERE u.plano_id <> 1
GROUP BY nome, c.cancao
ORDER BY nome;
