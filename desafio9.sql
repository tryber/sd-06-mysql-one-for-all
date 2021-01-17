USE SpotifyClone
DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome_artista VARCHAR(20))
BEGIN
SELECT
A.nome AS artista,
AB.album AS album
FROM artistas AS A
INNER JOIN albuns as AB
ON A.artista_id = AB.artista_id
WHERE A.nome = nome_artista
ORDER BY album;
END $$
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');