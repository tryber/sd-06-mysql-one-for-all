DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista_filtro VARCHAR(100))

BEGIN
SELECT ar.artista AS artista,
al.album_nome AS album
FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.albuns al
ON ar.artista_id = al.artista_id
WHERE artista = artista_filtro;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
