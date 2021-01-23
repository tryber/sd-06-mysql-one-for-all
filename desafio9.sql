DELIMETER $$
CREATE PROCEDURE albuns_do_artista(IN artists VARCHAR(80))
BEGIN
    SELECT ar.artist_name AS artista,
    al.album_name AS album
    FROM artists AS ar
    INNER JOIN albums AS al
    ON al.artist_id = ar.artist_id
    WHERE ar.artist_name = artists
    ORDER BY al.album_name;
END; $$
DELIMETER ;
