DELIMITER $$

CREATE PROCEDURE `albuns_do_artista`(IN `artista` VARCHAR(100))
BEGIN
SELECT artiststable.artist_name AS `artista`,
albunstable.album_name AS `album`
FROM (artiststable
INNER JOIN albunstable
ON artiststable.artist_id = albunstable.artist_id)
order by `artista` desc limit 2;
END$$

DELIMITER ;
