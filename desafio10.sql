DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_filtro TINYINT)
RETURNS TINYINT READS SQL DATA

BEGIN
DECLARE quantidade_musicas TINYINT;
SELECT COUNT(hi.musica_id)
FROM SpotifyClone.historico AS hi 
WHERE us.usuario_id = usuario_filtro INTO quantidade_musicas;
  RETURN quantidade_musicas;
END $$

DELIMITER ;
