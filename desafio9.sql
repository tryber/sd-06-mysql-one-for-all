DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(45))
BEGIN
SELECT a.artist_name AS artista,
b.album_name AS album
FROM Artists AS a
INNER JOIN Albuns AS b
ON b.artist_id = a.artist_id
WHERE a.artist_name = nome_artista
ORDER BY album;
END $$
DELIMITER ;
