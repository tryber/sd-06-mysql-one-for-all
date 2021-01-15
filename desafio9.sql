DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
SELECT artistas AS artista,
alb.albuns AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
    ON alb.artista_id = art.artista_id
WHERE art.artista = artista;
END $$

DELIMITER ;
