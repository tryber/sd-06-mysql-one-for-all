DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE reprodutions INT;
SELECT COUNT(SpotifyClone.historic.user_id)
FROM SpotifyClone.historic
WHERE SpotifyClone.historic.user_id = userId INTO reprodutions;
RETURN reprodutions;
END $$
DELIMITER ;