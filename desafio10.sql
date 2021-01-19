DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_input INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE nr_of_times_played INT;
  SELECT COUNT(sp.user_id)
  FROM SpotifyClone.song_played sp
  WHERE id_input = sp.user_id
  INTO nr_of_times_played ;
  RETURN nr_of_times_played;
END $$

DELIMITER ;