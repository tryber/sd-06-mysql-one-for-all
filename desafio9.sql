DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
SELECT
AR.name AS 'artista',
AL.name AS 'album'
FROM SpotifyClone.album AL
INNER JOIN SpotifyClone.artist AR
ON AL.artist_id = AR.id
WHERE AR.name = artista
ORDER BY `album`;
END $$

DELIMITER ;
