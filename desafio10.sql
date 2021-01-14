DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE song_total INT;
    SELECT COUNT(ph.user_id)
    FROM play_history ph
    WHERE ph.user_id = user_id INTO song_total;
    RETURN song_total;
END $$

DELIMITER ;
