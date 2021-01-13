DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
	SELECT 
		art.nome AS artista,
        alb.nome AS album
	FROM spotifyclone.artista AS art
    INNER JOIN spotifyclone.album AS alb
    ON art.artista_id = alb.artista_id AND art.nome = artista
	ORDER BY album;
END $$

DELIMITER ;