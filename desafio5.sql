CREATE VIEW top_2_hits_do_momento AS
SELECT
m.musica AS 'cancao',
COUNT(h.usuario_id) AS 'reproducoes'
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico AS h
ON h.musica_id = m.musica_id
GROUP BY m.musica_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
