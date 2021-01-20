CREATE VIEW top_2_hits_do_momento AS 
SELECT
C.titulo_cancao AS 'cancao',
COUNT(H.usuario_id) AS 'reproducoes' 
FROM SpotifyClone.cancao AS C
INNER JOIN SpotifyClone.historico_reproducao AS H
ON C.cancao_id = H.cancao_id
GROUP BY H.cancao_id
ORDER BY `reproducoes` DESC, titulo_cancao ASC
LIMIT 2;
