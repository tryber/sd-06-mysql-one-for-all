DELIMITER $
CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(64))
BEGIN
SELECT
a.artist_name `artista`,
al.album_name `album`
FROM SpotifyClone.Artists a
LEFT JOIN SpotifyClone.Albums al
ON al.artist_id = a.artist_id
WHERE a.artist_name = artist
ORDER BY `album`;
END; $

DELIMITER ;
