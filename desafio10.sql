DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(user_id)
FROM SpotifyClone.historic AS h
WHERE h.user_id = user_id INTO total;
RETURN total;
END $$

DELIMITER ;
