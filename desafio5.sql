CREATE VIEW top_2_hits_do_momento AS SELECT
C.cancao_nome cancao, COUNT(H.cancao_id) reproducoes FROM SpotifyClone.cancoes C
INNER JOIN SpotifyClone.historico_reproducao H ON H.cancao_id  = C.cancao_id 
GROUP BY cancao ORDER BY reproducoes DESC, cancao  LIMIT 2;
