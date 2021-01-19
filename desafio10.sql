DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE song_count INT;
  SELECT
    COUNT(*) AS `quantidade_musicas_no_historico`
  FROM
    play_history as ph
  WHERE
    ph.user_id = id
  INTO song_count;
  RETURN song_count;
END $$

DELIMITER ;
