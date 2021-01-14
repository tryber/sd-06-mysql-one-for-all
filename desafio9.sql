USE SpotifyClone;

delimiter $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(40))
BEGIN
SELECT artista, album FROM albuns AS alb
INNER JOIN artistas AS art ON art.artista_id = alb.artista_id
WHERE artista = nome_artista
ORDER BY album;
END $$

delimiter ;

CALL albuns_do_artista('Walter Phoenix');
