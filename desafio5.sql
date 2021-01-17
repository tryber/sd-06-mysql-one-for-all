CREATE VIEW top_2_hits_do_momento AS
SELECT
M.nome AS cancao,
COUNT(H.musica_id) AS reproducoes
FROM musicas AS M
INNER JOIN historico AS H
ON H.musica_id = M.musica_id
GROUP BY H.musica_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
