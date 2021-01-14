CREATE VIEW `top_2_hits_do_momento` AS
SELECT
C.titulo_cancao AS 'cancao',
COUNt(H.cancao_id) AS 'reproducoes'
FROM SpotifyClone.historico_reproducao AS H
JOIN SpotifyClone.cancoes AS C ON C.cancao_id = H.cancao_id
GROUP BY C.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
