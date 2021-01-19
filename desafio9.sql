DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN
  SELECT
    a.artist_name AS `artista`,
    al.album_name AS `album`
  FROM
    albums AS al
  INNER JOIN artists AS a ON a.id = al.artist_id
  WHERE
    a.artist_name = nome_artista
  ORDER BY
    `album`;
END $$

DELIMITER ;
