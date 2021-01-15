CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
SELECT artistas.artista AS artista,
albums.album AS album
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.albums AS albums
ON albums.artista_id = artistas.artista_id
WHERE artistas.artista = artista;
END $$

DELIMITER ;
