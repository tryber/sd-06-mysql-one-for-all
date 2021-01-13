CREATE VIEW top_2_hits_do_momento AS
SELECT
c.cancao,
COUNT(hr.cancao_id) AS `reproducoes`
FROM spotifyclone.cancoes c
INNER JOIN spotifyclone.historico_de_reproducoes hr ON c.cancao_id = hr.cancao_id
GROUP BY c.cancao
ORDER BY `reproducoes` DESC, cancao ASC
LIMIT 2;
