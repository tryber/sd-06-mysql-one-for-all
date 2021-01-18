CREATE VIEW top_2_hits_do_momento AS 
SELECT C.cancao,
count(C.cancao) AS reproducoes
FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.historico AS H
ON C.cancao_id = H.cancao_id
GROUP BY C.cancao
ORDER BY count(C.cancao) DESC,
C.cancao
LIMIT 2;
