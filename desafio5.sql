CREATE VIEW top_2_hits_do_momento AS
SELECT MUSICAS.nome AS "cancao",
COUNT(HISTORICO.musicas_id) AS "reproducoes"
FROM musicas AS MUSICAS, historico AS HISTORICO
WHERE MUSICAS.musicas_id = HISTORICO.musicas_id
GROUP BY `cancao` ORDER BY `reproducoes` DESC, `cancao` LIMIT 2;
