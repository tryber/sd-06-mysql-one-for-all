DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (user int)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_musicas_no_historico int;
SELECT COUNT(*) 
  FROM SpotifyClone.songs_history AS sh
  WHERE sh.user_id = user
GROUP BY sh.user_id
INTO quantidade_musicas_no_historico;
RETURN quantidade_musicas_no_historico;
END $$

DELIMITER ;
