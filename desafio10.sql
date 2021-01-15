USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INTEGER)
RETURNS INTEGER READS SQL DATA
BEGIN
DECLARE quantity INTEGER;
SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.users_history_songs
WHERE user_id = id
INTO quantity;
RETURN quantity; 
END $$

DELIMITER ;
SELECT quantidade_musicas_no_historico(3);
