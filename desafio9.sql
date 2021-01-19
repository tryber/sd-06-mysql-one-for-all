DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista_selecionado VARCHAR(50))
BEGIN
SELECT ar.nome_artista AS artista, al.nome_album AS album FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artista AS ar ON al.id_artista = ar.id
WHERE ar.nome_artista = nome_artista_selecionado
ORDER BY album;
END $$
DELIMITER ;
