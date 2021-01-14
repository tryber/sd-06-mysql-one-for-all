DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN input_name VARCHAR(100))
BEGIN
SELECT a.nome `artista`, ab.nome `album` 
FROM SpotifyClone.artistas AS a
JOIN SpotifyClone.albuns AS ab 
ON ab.artista_id = a.artista_id
WHERE a.nome = input_name;
END $$

DELIMITER ;
