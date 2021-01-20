DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artists varchar(50)) 
BEGIN
    select a.nome AS `artista`,
    al.nome AS `album` FROM artists
    JOIN albums ON albums.artist_id = artists.artist_id
    WHERE artists.artist_name = artists;
END $$
DELIMITER ;
