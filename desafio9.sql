CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(60))
BEGIN
SELECT Art.artista AS artista,
Alb.titulo AS album
FROM SpotifyClone.Artistas AS Art
INNER JOIN SpotifyClone.Albuns AS Alb
ON Alb.artista_id = Art.artista_id
WHERE artista = nome_artista
ORDER BY `album`;
END $$
DELIMITER ;
