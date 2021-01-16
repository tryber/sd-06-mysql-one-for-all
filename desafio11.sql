CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome, COUNT(hr.cancao_id) AS reproducoes
FROM historico_execucoes AS hr
INNER JOIN usuarios AS u ON hr.usuario_id = u.usuario_id
INNER JOIN cancoes AS c ON hr.cancao_id = c.cancao_id
WHERE u.planos_plano_id IN (2, 3)
GROUP BY cancao
ORDER BY cancao;
