DROP PROCEDURE IF EXISTS albuns_do_artista
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(200))
BEGIN
SELECT A.nome_artista AS artista,
AL.nome_album AS album
FROM SpotifyClone.artistas A 
INNER JOIN SpotifyClone.albuns AL ON AL.artista_id = A.artista_id
WHERE A.nome_artista = nome
ORDER BY album;
END $$

DELIMITER ;
CALL albuns_do_artista('Walter Phoenix');
