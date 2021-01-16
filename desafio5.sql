CREATE VIEW top_2_hits_do_momento AS
SELECT c.nome AS `cancão`,  count(h.cancoes_id) AS `reproducoes`
FROM cancoes AS c
INNER JOIN historico AS h
ON c.id = h.cancoes_id	
group by `cancão`
ORDER BY `reproducoes` DESC, `cancão`
LIMIT 2;
