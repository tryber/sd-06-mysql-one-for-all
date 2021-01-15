USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN artist VARCHAR(50))
BEGIN
SELECT ar.nome_artista AS 'artista',
ab.nome_album AS 'album'
FROM SpotifyClone.artista as ar
inner join SpotifyClone.album as ab
on ar.artista_id = ab.artista_id
WHERE ar.nome_artista = artist
order by ab.nome_album
;
END $$
DELIMITER ;
