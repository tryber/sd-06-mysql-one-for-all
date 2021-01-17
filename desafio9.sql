DELIMITER $$

CREATE PROCEDURE albuns_do_artista(name VARCHAR(100))
BEGIN
SELECT
ar.name AS artista,
al.name AS album
FROM artists AS ar
INNER JOIN albums AS al
ON ar.artist_id = al.artist_id
WHERE ar.name = name
ORDER BY album;
END $$

DELIMITER ;
