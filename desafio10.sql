DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE musicas_total INT;
  SELECT COUNT(fk_usuario_id)
  FROM SpotifyClone.tabela_reproducoes AS r
  WHERE r.fk_usuario_id = usuario_id INTO musicas_total;
  RETURN musicas_total;
END $$

DELIMITER ;
