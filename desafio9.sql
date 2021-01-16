DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(200))
BEGIN
SELECT artista AS artista, album AS album
FROM artistas AS ar
INNER JOIN albuns AS al ON ar.artista_id = al.artista_id
WHERE artista = nome_artista;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
