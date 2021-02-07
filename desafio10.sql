USE SpotifyClone
DELIMITER //
CREATE FUNCTION quantidade_musicas_no_historico(identificador VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(DISTINCT h.song_id) FROM SpotifyClone.history_songs AS h
INNER JOIN SpotifyClone.users AS u
ON h.user_id = u.user_id
WHERE identificador = u.user_name INTO result;
RETURN result;
END; //
DELIMITER ;
