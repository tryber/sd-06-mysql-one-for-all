DELIMITER $$
CREATE PROCEDURE albuns_do_artista (nome_artista VARCHAR(50))
BEGIN
SELECT a.nome AS `artista`, ab.nome AS `album`
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS ab ON ab.artista_id = a.artista_id
WHERE a.nome = nome_artista
ORDER BY `album`;
END $$;
DELIMITER ;
