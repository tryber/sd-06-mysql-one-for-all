USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento AS
SELECT 
	historico AS cancao,
    COUNT(historico) AS reproducoes
FROM reproducoes
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;