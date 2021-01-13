USE SpotifyClone;
DROP PROCEDURE IF EXISTS albuns_do_artista;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN
  SELECT a.nome AS artista, al.nome AS album
  FROM artista AS a
  INNER JOIN album AS al ON a.artista_id = al.artista_id
  WHERE a.nome = nome_artista
  ORDER BY album;
END $$
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
