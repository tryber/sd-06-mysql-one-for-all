DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(100))
BEGIN
  SELECT
    ar.artist AS `artista`,
    al.album AS `album`
  FROM
    artists AS ar
  INNER JOIN
    albums AS al ON al.artist_id = ar.id
  WHERE ar.artist like artist_name
  ORDER BY
    al.album;
END; $$

DELIMITER ;
