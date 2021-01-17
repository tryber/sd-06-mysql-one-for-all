DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista varchar(255))
BEGIN
SELECT
a.artista as artista,
al.album as album
FROM SpotifyClone.artistas as a
INNER JOIN SpotifyClone.albums as al on al.artista_id = a.artista_id
WHERE a.artista like artista
ORDER BY al.album;
END; $$

DELIMITER ;
