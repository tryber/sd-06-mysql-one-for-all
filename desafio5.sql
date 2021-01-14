CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT c.nome AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.historico h
INNER JOIN SpotifyClone.cancoes c
ON h.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
