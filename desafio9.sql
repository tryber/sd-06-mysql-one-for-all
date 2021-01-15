DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT 
AR.nome_artista AS artista,
AL.nome_album AS album
FROM artistas AS AR
INNER JOIN albuns AS AL
ON AL.artista_id = AR.artista_id
WHERE AR.nome_artista = nome_artista
ORDER BY album;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
