USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
  SELECT A.nome AS artista, AB.nome AS album
  FROM album AS AB
    LEFT JOIN artista AS A
    on AB.artista_id = A.artista_id
  WHERE A.nome = nome
  ORDER BY AB.nome ASC;
END $$

DELIMITER ;
