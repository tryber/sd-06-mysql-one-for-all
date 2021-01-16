-- USE SpotifyClone;
-- DROP VIEW IF EXISTS top_2_hits_do_momento;

CREATE VIEW top_2_hits_do_momento AS
SELECT c.nome AS cancao, COUNT(r.usuario_id) AS reproducoes
FROM reproducao AS r
INNER JOIN cancao AS c ON r.cancao_id = c.cancao_id
GROUP BY r.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;


-- SELECT * FROM top_2_hits_do_momento;
