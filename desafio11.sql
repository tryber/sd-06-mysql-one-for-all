CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome,
COUNT(uc.cancoes_id) AS reproducoes
FROM usuarios_has_cancoes AS uc
INNER JOIN cancoes AS c
ON c.id = uc.cancoes_id
INNER JOIN usuarios AS u
ON uc.usuarios_id = u.id
INNER JOIN planos AS p
ON u.planos_id = p.id
WHERE p.plano = 'familiar' OR p.plano = 'universitario'
GROUP BY nome
ORDER BY nome;
