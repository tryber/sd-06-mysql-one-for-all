DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (id DECIMAL)
RETURNS INT READS SQL DATA 
BEGIN
RETURN (SELECT COUNT(*) 
FROM SpotifyClone.history as h
WHERE h.user_id = id);
END$$
DELIMITER ;
