DELIMITER $$ 

CREATE PROCEDURE albuns_do_artista(IN a_name VARCHAR(100))
BEGIN
SELECT art.artist_name AS 'artista', al.album_name AS 'album'
FROM SpotifyClone.artists art, SpotifyClone.albuns al 
WHERE art.artist_name = a_name AND art.artist_id = al.album_id
ORDER BY al.album_name;
END $$

DELIMITER ;
