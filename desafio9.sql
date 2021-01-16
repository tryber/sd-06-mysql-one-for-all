USE spotifyclone;

DELIMITER $$
create procedure albuns_do_artista(nome VARCHAR(45))
BEGIN
-- DECLARE result INT;
SELECT ar.artista, al.album 
FROM artistas AS ar
INNER JOIN albuns AS al
ON ar.id = al.artistas_id
WHERE ar.artista = nome;
END $$
DELIMITER ;
