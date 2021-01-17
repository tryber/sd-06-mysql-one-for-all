DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_songs INT;
SELECT
COUNT(user_id)
FROM playback_history
WHERE user_id = id
INTO total_songs;
RETURN total_songs;
END $$

DELIMITER ;
