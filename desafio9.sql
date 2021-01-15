DROP PROCEDURE IF EXISTS albuns_do_artista;
USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT ARTIST.artist_name AS artista,
ALBUM.album_name AS album
FROM SpotifyClone.artists AS ARTIST
JOIN SpotifyClone.albums AS ALBUM ON ARTIST.artist_id = ALBUM.artist_id
WHERE nome = ARTIST.artist_name
ORDER BY album;
END $$

DELIMITER ;
CALL albuns_do_artista('Walter Phoenix');
