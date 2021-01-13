USE spotifyclone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT
ar.artista,
ab.album
FROM spotifyclone.albums ab
INNER JOIN spotifyclone.artistas ar ON ab.artista_id = ar.artista_id
WHERE ar.artista = nome_artista
ORDER BY ab.album ASC;
END $$

DELIMITER ;
