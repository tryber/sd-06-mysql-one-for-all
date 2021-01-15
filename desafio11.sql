CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome,
COUNT(u.cancoes_id) AS reporoducoes
FROM cancoes AS c
INNER JOIN usuarios_has_cancoes AS u
ON c.id = cancoes_id
GROUP BY nome
ORDER BY nome;
