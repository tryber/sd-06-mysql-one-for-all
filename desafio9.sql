DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
    SELECT
    a.nome_artista AS `artista`,
    b.nome_album AS `album`
    FROM SpotifyClone.artistas AS a
    JOIN SpotifyClone.albuns AS b
    ON a.artista_id = b.artista
    WHERE a.nome_artista = nome
    ORDER BY `album`;
END $$

DELIMITER ;
