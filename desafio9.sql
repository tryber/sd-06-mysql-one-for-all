USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista_in VARCHAR(30))
BEGIN
SELECT art.artista AS 'artista',
alb.album AS 'album'
from SpotifyClone.artistas as art
INNER JOIN SpotifyClone.album AS alb ON art.artista_id = alb.artista_id
WHERE art.artista = artista_in
ORDER BY album;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
