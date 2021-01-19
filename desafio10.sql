DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_filtro VARCHAR(50))
RETURNS TINYINT READS SQL DATA

BEGIN
DECLARE quantidade_musicas TINYINT;
SELECT COUNT(hi.musica_id)
FROM SpotifyClone.historico AS hi 
INNER JOIN SpotifyClone.usuarios AS us
ON hi.usuario_id = us.usuario_id
WHERE us.usuario = usuario_filtro INTO quantidade_musicas;
  RETURN quantidade_musicas;
END $$

DELIMITER ;
