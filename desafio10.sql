DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_songs INT;
SELECT
COUNT(song_id)
FROM playback_history
GROUP BY user_id
HAVING user_id = id
INTO total_songs;
RETURN total_songs;
END $$

DELIMITER ;
