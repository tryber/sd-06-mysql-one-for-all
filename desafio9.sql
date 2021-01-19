DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(30))
BEGIN
SELECT ar.artist AS artista,
al.album AS album
FROM artists AS ar
INNER JOIN albums AS al
ON ar.artist_id = al.artist_id
WHERE ar.artist like nome
ORDER BY 2;
END $$
DELIMITER ;
