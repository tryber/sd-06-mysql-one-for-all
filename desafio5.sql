CREATE VIEW top_3_artistas AS
SELECT c.cancao AS `cancao`,
COUNT(h.usuario_id) AS `reproducoes`
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.historico_de_reproducoes h ON c.cancao_id=h.cancao_id
GROUP BY h.cancao_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
