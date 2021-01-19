DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(80))
BEGIN
SELECT a.artist AS artista,
al.album AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al
ON al.artist_id = a.id
WHERE a.artist = artista
ORDER BY album;
END  $$

DELIMITER ;
