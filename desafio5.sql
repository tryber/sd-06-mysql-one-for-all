CREATE VIEW top_2_hits_do_momento AS
SELECT c.nome_cancao AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.historico_de_reproducao AS hdr
INNER JOIN SpotifyClone.cancao AS c ON hdr.id_cancao= c.id
GROUP BY c.nome_cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
