DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(100))
BEGIN
SELECT 
art.name AS artista, alb.title AS album

FROM SpotifyClone.albuns AS alb
INNER JOIN SpotifyClone.artists AS art
ON alb.id_artist = art.id_artist

WHERE art.name = name
ORDER BY art.name ASC;
END $$

DELIMITER ;
