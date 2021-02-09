DELIMITER $
CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(64))
BEGIN
SELECT ar.artist_name `artista`,
al.album_name `album`
FROM SpotifyClone.Artists ar
LEFT JOIN SpotifyClone.Albums al
ON al.artist_id = ar.artist_id
WHERE ar.artist_name = artist
ORDER BY `album`;
END; $
DELIMITER ;
