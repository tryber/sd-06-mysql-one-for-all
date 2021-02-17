DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(64))
BEGIN
  SELECT
    ar.artist_name AS "artista",
    al.album_name AS "album"
  FROM SpotifyClone.artists AS ar
    LEFT JOIN SpotifyClone.Albums AS al
      ON al.artist_id = ar.artist_id
  WHERE ar.artist_name = artist
  ORDER BY `album`;
END $$

DELIMITER ;
