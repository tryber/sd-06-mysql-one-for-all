CREATE VIEW top_2_hits_do_momento AS
SELECT c.nome_cancao AS `cancao`,
  COUNT(*) AS `reproducoes`
FROM SpotifyClone.historico AS h
  INNER JOIN SpotifyClone.cancoes AS c
    ON c.id_cancao = h.id_cancao 
GROUP BY c.id_cancao
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
