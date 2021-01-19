DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA 
BEGIN
    DECLARE quantity INT;
    SELECT 
        COUNT(song_id)
    FROM
        SpotifyClone.history
    WHERE user_id = id INTO quantity;
    RETURN quantity;
END $$
DELIMITER ;
