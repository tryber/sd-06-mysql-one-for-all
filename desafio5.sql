CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS cancao,
COUNT(hr.cancoes_id) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes AS hr
INNER JOIN SpotifyClone.cancoes AS c ON c.cancoes_id = hr.cancoes_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
