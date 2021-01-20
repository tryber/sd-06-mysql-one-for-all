DELIMETER $$
CREATE PROCEDURE albuns_do_artista(IN artists varchar(50)) 
BEGIN
    select artists.nome AS `artista`,
    albums.album_name AS `album` 
    FROM artists
    JOIN albums ON albums.artist_id = artists.artist_id
    WHERE artists.artist_name = artists;
END $$
DELIMETER ;
