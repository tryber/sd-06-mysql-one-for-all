DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(200))
BEGIN
  SELECT
    a.nome_artista AS `artista`,
    a2.nome_album AS `album`
  FROM SpotifyClone.artistas AS a
    JOIN SpotifyClone.albuns AS a2
      ON a.id_artista = a2.artista_associado 
  WHERE a.nome_artista = nome_artista
    ORDER BY `album`;
END $$

DELIMITER ;
