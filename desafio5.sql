-- aqui criamos uma view com as duas músicas mais tocadas no momento com as colunas: cancao e reproducoes
CREATE VIEW top_2_hits_do_momento AS
SELECT 
c.cancao AS cancao,
COUNT(r.cancao_id) AS reproducoes
FROM reproducoes AS r
INNER JOIN cancoes AS c ON r.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
