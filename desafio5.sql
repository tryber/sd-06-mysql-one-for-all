CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS 'cancao', COUNT(h.id_cancao) AS 'reproducoes'
FROM SpotifyClone.historico_de_reproducoes AS h
INNER JOIN SpotifyClone.cancoes AS c ON h.id_cancao = c.id_cancao
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
