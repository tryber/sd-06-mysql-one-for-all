DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista_referencia VARCHAR(50) )
BEGIN
SELECT A.nome_artista AS 'artista', AB.titulo AS 'album' 
FROM SpotifyClone.artista  AS A
INNER JOIN SpotifyClone.album AS AB
ON A.artista_id = AB.artista_id 
WHERE A.nome_artista = nome_artista_referencia;
END $$
DELIMITER ;
