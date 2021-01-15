DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(200))
BEGIN
  SELECT ar.nome_artista AS 'artista',
  al.nome_album AS 'album'
  FROM SpotifyClone.tabela_artista AS ar
  INNER JOIN SpotifyClone.tabela_album AS al ON al.fk_artista_id = ar.artista_id
  WHERE ar.nome_artista LIKE CONCAT('%', artista, '%')
  ORDER BY `album`;
END $$

DELIMITER ;
