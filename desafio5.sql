CREATE VIEW top_2_hits_do_momento AS
SELECT C.nome_cancao AS cancao,
COUNT(HE.cancoes_id) AS reproducoes
FROM SpotifyClone.historico_execucoes HE
INNER JOIN SpotifyClone.cancoes C ON C.cancoes_id = HE.cancoes_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
