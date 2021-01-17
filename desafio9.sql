DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN a VARCHAR(100))
BEGIN
SELECT ar.artist AS 'artista', album AS album
FROM SpotifyClone.albums AS al
INNER JOIN SpotifyClone.artists as ar ON al.artist_id = ar.artist_id
WHERE ar.artist = a;
END $$
DELIMITER ;
