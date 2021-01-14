CREATE VIEW top_2_hits_do_momento AS
SELECT
c.cancao AS `cancao`,
COUNT(*) AS `reproducoes`
FROM historico_reproducoes AS hr
INNER JOIN cancoes AS c ON c.cancao_id = hr.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` LIMIT 2;
