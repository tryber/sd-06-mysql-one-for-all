DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista (IN nome VARCHAR(100))
BEGIN 
SELECT 
  art.artista,alb.album
FROM artistas art
  INNER JOIN albuns alb ON art.id_artista = alb.id_artista
  WHERE art.artista = nome
  ORDER BY art.artista; 
END $$

DELIMITER  ; 
