DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(64))
BEGIN
  SELECT
    ar.artist_name artista,
    al.album_name album
  FROM SpotifyClone.Albums al
    LEFT JOIN SpotifyClone.Artists ar
      ON al.artist_id = ar.artist_id
  ORDER BY `album`;
END $$

DELIMITER ;
