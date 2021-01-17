DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_musicas INT;
SELECT COUNT(cancao_id)
  FROM historico_execucoes
  WHERE usuario_id = 3
  GROUP BY usuario_id
  INTO quantidade_musicas;
  RETURN quantidade_musicas;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
