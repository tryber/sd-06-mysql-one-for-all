DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
SELECT artista_nome AS artista,
alb.album_nome AS album
FROM SpotifyClone.table_artistas AS art
INNER JOIN SpotifyClone.table_albuns AS alb
    ON alb.artista_id = art.artista_id
WHERE art.artista = artista;
END $$

DELIMITER ;
