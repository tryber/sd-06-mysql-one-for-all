DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(u_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_songs INT;
  SELECT COUNT(h.song_id)
  FROM History h 
  WHERE h.user_id = u_id
  INTO total_songs;
  RETURN total_songs;
END $$

DELIMITER ;
