USE SpotifyClone
DELIMITER //
CREATE FUNCTION quantidade_musicas_no_historico(identificador INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(DISTINCT song_id) FROM SpotifyClone.History
WHERE identificador = user_id INTO result;
RETURN result;
END; //
DELIMITER ;
