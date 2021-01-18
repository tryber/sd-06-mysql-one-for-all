CREATE VIEW top_2_hits_do_momento AS
SELECT c.nome AS `cancao`,  count(h.cancoes_id) AS `reproducoes`
FROM cancoes AS c
INNER JOIN historico AS h
ON c.id = h.cancoes_id	
group by `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
