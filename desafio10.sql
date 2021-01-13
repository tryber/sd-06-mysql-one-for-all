DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE songs_quantity INT;
SELECT COUNT(*)
FROM SpotifyClone.historico
WHERE SpotifyClone.historico.usuario_id = id_usuario
INTO songs_quantity;
RETURN songs_quantity;
END $$

DELIMITER ;
