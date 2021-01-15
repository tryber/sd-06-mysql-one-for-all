CREATE VIEW top_2_hits_do_momento AS
SELECT 
C.nome_cancao AS cancao,
COUNT(UC.cancao_id) AS reproducoes
FROM cancoes AS C
INNER JOIN usuarios_cancoes AS UC
ON UC.cancao_id = C.cancao_id
GROUP BY UC.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
