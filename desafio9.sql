DROP PROCEDURE IF EXISTS albuns_do_artista;

USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT A.nome AS 'artista',
AL.nome AS 'album'
FROM artista AS A
JOIN album AS AL ON A.artista_id = AL.artista_id
WHERE nome = A.nome
ORDER BY album;
END $$
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
