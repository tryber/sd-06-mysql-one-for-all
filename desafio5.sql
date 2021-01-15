CREATE VIEW top_2_hits_do_momento AS
SELECT C.nome AS 'cancao',
COUNT(HR.cancoes_id) AS 'reproducoes'
FROM cancoes AS C, historico_de_reproducoes AS HR
WHERE C.cancoes_id = HR.cancoes_id
GROUP BY `cancao` ORDER BY `reproducoes` DESC, `cancao` LIMIT 2;
