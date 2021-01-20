CREATE VIEW top_2_hits_do_momento AS SELECT
c.cancoes_name cancao, COUNT(h.cancoes_id) reproducoes FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.historico h ON h.cancoes_id  = c.cancoes_id 
GROUP BY cancao ORDER BY reproducoes DESC, cancao  LIMIT 2;
