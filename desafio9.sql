DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(40))
BEGIN
SELECT nome_artista AS artista,
nome_album AS album
FROM artistas AS a
INNER JOIN albums AS ab ON a.artista_id = ab.artista_id
WHERE nome_artista = nome;
END $$

DELIMITER ;
