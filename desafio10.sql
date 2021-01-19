DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_reproduction INT;
    SELECT COUNT(usuario_id)
    FROM SpotifyClone.historico_reproducoes AS h
    WHERE h.usuario_id = userID INTO total_reproduction;
    RETURN total_reproduction;
END $$

DELIMITER ;
