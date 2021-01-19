DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(name varchar(500))
RETURNS INT READS SQL DATA 
BEGIN
    DECLARE quantity INT;
    SELECT 
        COUNT(h.song_id)
    FROM
        SpotifyClone.history AS h
            INNER JOIN
        SpotifyClone.users AS u ON h.user_id = u.user_id
    WHERE u.user_name = name INTO quantity;
    RETURN quantity;
END $$
DELIMITER ;
