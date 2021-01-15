USE SpotifyClone;
DROP PROCEDURE IF EXISTS albuns_do_artista;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN param VARCHAR(200))
BEGIN
SELECT AR.artist_name AS artista,
AL.album_name AS album
FROM SpotifyClone.artists AS AR
JOIN SpotifyClone.albuns AS AL
ON AR.artist_id = AL.artist_id AND AR.artist_name = param
ORDER BY album;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
