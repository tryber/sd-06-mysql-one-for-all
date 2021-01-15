DELIMITER $$
CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN nome_artista VARCHAR(45))
BEGIN
SELECT 
art.artistas AS artista,
a.albuns AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS a
ON art.id = a.artista_id
WHERE art.artista = nome_artista
ORDER BY album;
END $$ 

DELIMITER ;
