DELIMITER $$
CREATE PROCEDURE albuns_do_artista(NOME VARCHAR (20))
BEGIN
SELECT A.artista_nome 'artista',
AB.album_nome album
FROM SpotifyClone.artista A
INNER JOIN SpotifyClone.albuns AB ON A.artista_id = AB.artista_id
WHERE A.artista_nome = NOME ORDER BY album;
END $$
DELIMITER ;
