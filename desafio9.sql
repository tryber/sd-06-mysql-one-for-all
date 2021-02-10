DROP PROCEDURE IF EXISTS albuns_do_artista;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT ARTISTAS.nome AS "artista",
ALBUNS.nome AS "album"
FROM SpotifyClone.artistas AS ARTISTAS
INNER JOIN SpotifyClone.albuns AS ALBUNS
ON ALBUNS.artista_id = ARTISTAS.artista_id
WHERE ARTISTAS.nome = nome
ORDER BY `album`;
END $$
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
