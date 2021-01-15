CREATE VIEW cancoes_premium AS
SELECT 
C.nome_cancao AS nome,
COUNT(UC.cancao_id) AS reproducoes
FROM usuarios_cancoes AS UC
INNER JOIN cancoes AS C
ON C.cancao_id = UC.cancao_id
INNER JOIN usuarios AS U
ON U.usuario_id = UC.usuario_id
WHERE U.plano_id IN (2,3)
GROUP BY nome
ORDER BY nome;
