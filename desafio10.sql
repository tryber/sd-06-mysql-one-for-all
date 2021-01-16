DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE songs_in_history INT;
SELECT COUNT(user_id)
FROM Users_Reprod_History
WHERE user_id = id
INTO songs_in_history;
RETURN songs_in_history;
END $$
DELIMITER ;
