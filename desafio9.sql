USE SpotifyClone
DELIMITER //
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
SELECT an.artist_name AS `artista`, alb.album_name AS `album`
FROM SpotifyClone.artists AS an
INNER JOIN SpotifyClone.albuns AS alb
WHERE an.artist_id = alb.artist_id
AND an.artist_name = nome
ORDER BY alb.album_name;
END; //
DELIMITER ;
