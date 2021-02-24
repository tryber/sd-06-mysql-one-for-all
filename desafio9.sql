DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN param VARCHAR(200))
BEGIN
SELECT A.artista_nome AS artista,
AL.album_nome AS album
FROM SpotifyClone.artistas AS A
JOIN SpotifyClone.albuns AS AL
ON A.artista_id = AL.artista_id AND
A.artista_nome = param
ORDER BY album;
END $$
DELIMITER ;
