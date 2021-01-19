DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN a_name VARCHAR(100))
BEGIN
    SELECT art.artist_name AS 'artista', alb.album_name AS 'album'
    FROM SpotifyClone.artists art, SpotifyClone.albums alb
    WHERE art.artist_name = a_name AND art.artist_id = alb.artist_id
    ORDER BY alb.album_name;
END $$

DELIMITER ;
