CREATE VIEW top_2_hits_do_momento AS
SELECT c.nome AS `cancao`, COUNT(hr.usuario_id) AS `reproducoes`
FROM SpotifyClone.cancao c
INNER JOIN SpotifyClone.historico_reproducao hr ON hr.cancao_id = c.cancao_id
GROUP BY hr.cancao_id
ORDER BY `reproducoes` DESC, `cancao` LIMIT 2;
