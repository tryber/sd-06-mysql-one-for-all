DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT A.artista,
B.album
FROM SpotifyClone.artistas as A
INNER JOIN SpotifyClone.albuns as B
ON A.artista_id = B.artista_id
WHERE nome_artista = A.artista
ORDER BY B.album;
END $$

DELIMITER ;
