USE SpotifyClone;
CREATE VIEW top_2_hits_do_momento AS
SELECT C.cancao_nome AS 'cancao',
COUNT(DISTINCT U.usuario_id) AS 'reproducoes'
FROM SpotifyClone.cancoes C
INNER JOIN SpotifyClone.historico_de_reproducoes U ON C.cancao_id = U.cancao_id
GROUP BY C.cancao_nome
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2; 
