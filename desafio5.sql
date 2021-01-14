CREATE VIEW top_2_hits_do_momento AS
SELECT mu.musica_nome AS cancao,
COUNT(hi.musica_id) AS reproducoes
FROM SpotifyClone.musicas mu
INNER JOIN SpotifyClone.historico hi
ON mu.musica_id = hi.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
