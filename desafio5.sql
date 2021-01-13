CREATE VIEW top_2_hits_do_momento AS
SELECT c.nome_cancao AS 'cancao',
  COUNT(r.fk_usuario_id) AS 'reproducoes'
FROM SpotifyClone.tabela_cancao AS c
INNER JOIN SpotifyClone.tabela_reproducoes AS r ON r.fk_cancao_id = c.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
