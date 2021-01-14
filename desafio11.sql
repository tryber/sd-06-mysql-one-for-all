CREATE VIEW cancoes_premium AS
SELECT ca.nome_cancao, COUNT(*)
FROM cancoes AS ca
INNER JOIN historico AS hi ON ca.cancao_id = hi.cancao_id
INNER JOIN usuarios AS u ON hi.usuario_id = u.id
INNER JOIN planos AS p ON u.plano_id = p.plano_id
WHERE p.nome_plano = "familiar" OR p.nome_plano = "universitário"
GROUP BY ca.nome_cancao
ORDER BY ca.nome_cancao;
