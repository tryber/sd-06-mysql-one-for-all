DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN NomeArtista VARCHAR(80))
BEGIN
SELECT AR.artista_nome AS 'artista',
AL.album_nome AS 'album'
FROM SpotifyClone.artistas AS AR
INNER JOIN album AS AL ON AL.artista_id = AR.artista_id
WHERE AR.artista_nome LIKE NomeArtista;
END $$

DELIMITER ;
