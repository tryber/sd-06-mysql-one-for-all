DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT at.artista AS `artista`, ab.album AS `album`
FROM SpotifyClone.artista at
INNER JOIN SpotifyClone.album ab ON at.artista_id=ab.artista_id
WHERE at.artista=nome
ORDER BY `album`;
END $$
DELIMITER ;
