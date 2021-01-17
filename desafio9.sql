DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(50))
BEGIN
  SELECT a2.artist_name 'artista',
    a.album_name 'album'
  FROM Albums a
  INNER JOIN Artists a2
    ON a2.artist_id = a.artist_id
  WHERE a2.artist_name = name
  ORDER BY `album`;
END $$

DELIMITER ;