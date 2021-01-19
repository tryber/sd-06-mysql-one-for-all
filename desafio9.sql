DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN sin VARCHAR(40))
BEGIN
SELECT singer_name as `artista`,
album as `album` 
from SpotifyClone.albuns as a
inner join SpotifyClone.singers as s on  s.singer_id = a.singer_id
WHERE sin = s.singer_name
ORDER BY `album`;
END$$;
DELIMITER ;
