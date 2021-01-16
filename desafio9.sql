DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
    SELECT
        art.artist_name artista,
        alb.album_name album
    FROM SpotifyClone.albums alb
    JOIN SpotifyClone.artists art
    ON art.artist_id = alb.artist_id
    WHERE art.artist_name REGEXP nome
    ORDER BY album;
END $$

DELIMITER ;
