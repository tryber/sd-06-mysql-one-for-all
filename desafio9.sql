DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
    SELECT
    art.nome_artista AS `artista`,
    alb.nome_album AS `album`
    FROM SpotifyClone.artistas AS art
    JOIN SpotifyClone.albuns AS alb
    ON art.artista_id = alb.artista
    WHERE art.nome_artista = nome
    ORDER BY `album`;
END $$

DELIMITER ;
