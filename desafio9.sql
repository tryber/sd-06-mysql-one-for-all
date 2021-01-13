DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(100))
BEGIN
SELECT SpotifyClone.artist.artist_name AS artista,
SpotifyClone.album.album_name AS album
FROM SpotifyClone.artist
INNER JOIN SpotifyClone.album
ON SpotifyClone.album.artist_id = SpotifyClone.artist.artist_id
WHERE SpotifyClone.artist.artist_name = artist;
END $$
DELIMITER ;
