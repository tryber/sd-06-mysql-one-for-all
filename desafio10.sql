-- USE SpotifyClone;
-- DROP FUNCTION IF EXISTS quantidade_musicas_no_historico;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qte_musicas INT;
  SELECT COUNT(usuario_id) FROM reproducao WHERE usuario_id = id INTO qte_musicas;
  RETURN qte_musicas;
END $$
DELIMITER ;

-- SELECT quantidade_musicas_no_historico(3);
