CREATE VIEW top_2_hits_do_momento AS
SELECT
c.cancao AS cancao,
COUNT(h.cancao_id) as reproducoes
FROM SpotifyClone.cancoes AS c
JOIN SpotifyClone.historico_de_reproducao AS h
ON(c.id = h.cancao_id)
GROUP BY `cancao`
ORDER BY 2 DESC, 1 ASC
LIMIT 2;
