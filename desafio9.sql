USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT a.artista AS artista,
al.album AS album
FROM SpotifyClone.artistas a 
INNER JOIN SpotifyClone.albuns al ON al.artista_id = a.artista_id
WHERE a.artista = nome
ORDER BY album;
END $$

DELIMITER ;
CALL albuns_do_artista('Walter Phoenix');
