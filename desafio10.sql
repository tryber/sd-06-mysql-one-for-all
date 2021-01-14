DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT))
RETURNS INT READS SQL DATA
BEGIN 
  DECLARE quantidade_musicas_no_historico INT;
  SELECT COUNT(hr.id_cancao) AS quantidade_musicas_no_historico
  FROM SpotifyClone.historico_de_reproducoes AS hr
  INNER JOIN SpotifyClone.usuario AS u ON u.id = hr.id_usuario
  WHERE u.id = id_usuario
  INTO quantidade_musicas_no_historico;
  RETURN quantidade_musicas_no_historico;
END $$
DELIMITER ;
