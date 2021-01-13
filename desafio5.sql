CREATE VIEW top_2_hits_do_momento AS SELECT c.nome AS `cancao`, COUNT(hr.usuario_id) AS `reproducoes`
FROM SpotifyClone.historico_de_reproducoes AS hr
JOIN SpotifyClone.cancoes AS c ON hr.cancao_id = c.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
