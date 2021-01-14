CREATE VIEW top_2_hits_do_momento AS
SELECT 
c.cancao AS cancao,
COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.historico_reproducoes AS h
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancao_id = h.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
