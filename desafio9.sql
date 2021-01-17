DELIMETER $$
CREATE PROCEDURE albuns_do_artista(IN artists VARCHAR(40))
BEGIN
    SELECT SpotifyClone.artists.artist_name AS artista,
    SpotifyClone.albuns.album_name AS album
    FROM SpotifyClone.artists
    JOIN SpotifyClone.albuns
    ON SpotifyClone.albuns.artist_id = SpotifyClone.artists.artist_id
    WHERE SpotifyClone.artists.artist_name = artists;
END; $$
DELIMETER ;
