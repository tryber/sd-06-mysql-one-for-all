DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN art VARCHAR(40))
BEGIN
SELECT Author_Nome as `artista`,
ALBUM_NOME as `album` 
from SpotifyClone.albuns as alb
inner join SpotifyClone.author as aut on  aut.Author_ID = alb.Author_ID
WHERE art = aut.Author_Nome
ORDER BY `album`;
END$$;
DELIMITER ;
