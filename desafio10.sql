USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_musicas_escutadas INT;
  SELECT COUNT(*)
  FROM SpotifyClone.historico_reproducao AS H
  WHERE H.usuario_id = id_usuario
  INTO quantidade_musicas_escutadas;
  RETURN quantidade_musicas_escutadas;
END $$
DELIMITER ;

SELECT quantidade_musicas_no_historico(3) AS `quantidade_musicas_no_historico`;
