CREATE VIEW top_2_hits_do_momento AS
SELECT musicas.musica AS cancao,
COUNT(historico.usuario_id) AS reproducoes
FROM SpotifyClone.historico AS historico
INNER JOIN SpotifyClone.musicas AS musicas
ON musicas.musica_id = historico.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
