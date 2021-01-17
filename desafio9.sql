DELIMITER $$
CREATE PROCEDURE albuns_do_artista(artista VARCHAR(50))
BEGIN

SELECT
a.artista AS artista,
al.album AS album
FROM artistas AS a
INNER JOIN albuns AS al
ON a.artista_id = al.artista_id
WHERE a.artista = artista;

END $$
DELIMITER ;
