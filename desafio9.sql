DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT 
art.nome AS artista,
alb.nome AS album
FROM SpotifyClone.albums alb
INNER JOIN SpotifyClone.artistas art
ON alb.artista_id = art.artista_id
WHERE art.nome = nome_artista
ORDER BY album;
END $$

DELIMITER ;
