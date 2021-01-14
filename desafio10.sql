USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
    RETURNS INT READS SQL DATA
BEGIN
    DECLARE music_qtdd INT;
    SELECT COUNT(*)
    FROM History AS h
    WHERE h.user_id = user_id INTO music_qtdd;
    RETURN music_qtdd;
END; $$
DELIMITER ;
