DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_played INT;
    SELECT COUNT(p.user_id)
    FROM played AS p
    WHERE p.user_id = userId INTO total_played;
    RETURN total_reproduction;
END; $$
DELIMITER ;
