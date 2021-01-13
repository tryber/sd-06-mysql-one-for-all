CREATE VIEW top_2_hits_do_momento AS
SELECT 
a.musica AS `cancao`,
COUNT(b.musica) AS `reproducoes`
FROM SpotifyClone.historico b
JOIN SpotifyClone.musicas AS a
ON b.musica = a.musica_id
GROUP BY b.musica
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
