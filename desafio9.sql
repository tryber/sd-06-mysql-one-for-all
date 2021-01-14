DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(50))
BEGIN
    SELECT a.name 'artista', al.name 'album'
    FROM artists a
    INNER JOIN albums al ON al.artist_id = a.id
    WHERE a.name = name
    ORDER BY `album`;
END $$

DELIMITER ;
