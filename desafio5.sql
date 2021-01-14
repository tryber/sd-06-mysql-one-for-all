CREATE VIEW top_2_hits_do_momento AS
SELECT 
can.cancao_nome AS cancao,
COUNT(DISTINCT his.usuario_id)  AS reproducoes
FROM SpotifyClone.table_historico AS his
INNER JOIN SpotifyClone.table_cancoes AS can
ON can.cancao_id = his.cancao_id
GROUP BY cancao_nome
ORDER BY reproducoes DESC, cancao
LIMIT 2;
