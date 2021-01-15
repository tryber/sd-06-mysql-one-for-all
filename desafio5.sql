
CREATE VIEW top_2_hits_do_momento AS
SELECT 
song.cancao AS `cancao`,
COUNT(b.cancao) AS `reproducoes`
FROM SpotifyClone.historico_de_reproducoes b
JOIN SpotifyClone.cancoes AS song
ON b.cancao = song.cancao_id
GROUP BY b.cancao
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
