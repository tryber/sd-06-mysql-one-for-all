DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(u_name VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE nr_of_times_played INT;
SELECT COUNT(sp.user_id)
FROM SpotifyClone.songs_played sp, SpotifyClone.users u
WHERE u_name = u.user_name AND u.user_id = sp.user_id
INTO nr_of_times_played ;
RETURN nr_of_times_played;
END $$

DELIMITER ;
