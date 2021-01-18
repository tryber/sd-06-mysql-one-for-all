DROP PROCEDURE IF EXISTS albuns_do_artista;

USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT A.nome_artista AS 'artista',
AL.titulo_album AS 'album'
FROM artistas AS A
JOIN albuns AS AL ON A.artista_id = AL.artista_id
WHERE nome = A.nome_artista
ORDER BY album;
END $$
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
