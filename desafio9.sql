DELIMITER $$
CREATE PROCEDURE SpotifyClone.albuns_do_artista (IN nome VARCHAR(100))
BEGIN 
SELECT 
  ar.artista, al.album
FROM artistas ar
  INNER JOIN albuns al ON ar.id_artista = al.id_artista
  WHERE ar.artista = nome
  ORDER BY ar.artista; 
END $$
DELIMITER  ;
