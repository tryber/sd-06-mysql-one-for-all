DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT a.artista AS artista,
ab.album AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albums AS ab
ON ab.artista_id = a.artista_id
WHERE a.artista = nome
ORDER BY album;
END; $$

DELIMITER $$
