DELIMITER $$
CREATE PROCEDURE albuns_do_artista(Artist VARCHAR(50)) BEGIN
SELECT
  artist.artist_name AS artista,
  album.album_title AS album
FROM
  artist
  INNER JOIN album ON artist.id = album.artist_id
HAVING
  artista = Artist
ORDER BY
  album
END $$ 
DELIMITER;
