DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(60))
RETURNS INT READS SQL DATA
BEGIN 
  DECLARE quantidade_musicas_no_historico INT;
  SELECT COUNT(hr.id_cancao) AS quantidade_musicas_no_historico
  FROM SpotifyClone.historico_de_reproducoes AS hr
  INNER JOIN SpotifyClone.usuario AS u ON u.id = hr.id_usuario
  WHERE u.nome = usuario
  INTO quantidade_musicas_no_historico;
  RETURN quantidade_musicas_no_historico;
END $$
DELIMITER ;
