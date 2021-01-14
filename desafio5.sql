CREATE VIEW top_2_hits_do_momento AS
SELECT C.cancao AS `cancao`,
COUNT(HR.cancao_id) AS `reproducoes`
FROM SpotifyClone.cancoes AS C, SpotifyClone.historico_reproducoes AS HR
WHERE C.cancao_id = HR.cancao_id
GROUP BY HR.cancao_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
