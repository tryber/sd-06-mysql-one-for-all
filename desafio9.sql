DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT
art.artista_nome AS `artista`,
alb.album_nome AS `album`
FROM
table_artistas AS art
INNER JOIN
table_albuns AS alb ON alb.artista_id = art.artista_id
WHERE art.artista_nome like nome_artista
ORDER BY
alb.album_nome;
END; $$

DELIMITER ;
