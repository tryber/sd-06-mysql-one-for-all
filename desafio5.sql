CREATE VIEW top_2_hits_do_momento AS
SELECT ca.nome_cancao AS cancao,
q.vezes AS reproducoes 
FROM (SELECT cancao_id, COUNT(*) AS vezes
FROM historico
GROUP BY cancao_id) AS q
INNER JOIN cancoes AS ca ON q.cancao_id = ca.cancao_id
ORDER BY reproducoes DESC, cancao 
LIMIT 2;
