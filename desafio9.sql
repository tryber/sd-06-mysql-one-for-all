DELIMETER $$
CREATE PROCEDURE albuns_do_artista(IN artists VARCHAR(40))
BEGIN
    SELECT artists.artist_name AS artista,
    albuns.album_name AS album
    FROM artists
    JOIN albuns
    ON albuns.artist_id = artists.artist_id
    WHERE artists.artist_name = artists;
END; $$
DELIMETER ;
