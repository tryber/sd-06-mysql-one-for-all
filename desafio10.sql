DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_musicas INT;
    SELECT COUNT(musica)
    FROM SpotifyClone.historico
    WHERE usuario = id INTO total_musicas;
    RETURN total_musicas;
END $$

DELIMITER ;
