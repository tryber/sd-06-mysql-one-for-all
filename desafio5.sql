CREATE VIEW top_2_hits_do_momento AS
SELECT t1.cancao AS cancao,
COUNT(t2.cancoes_id) AS reproducoes
FROM cancoes AS t1
INNER JOIN usuarios_has_cancoes AS t2
ON t1.id = t2.cancoes_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
