DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(UserID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_de_musicas INT;
SELECT COUNT(*) FROM SpotifyClone.history WHERE user_id = UserID INTO total_de_musicas;
RETURN total_de_musicas;
END $$

DELIMITER ;
