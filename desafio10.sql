DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(nome VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_reproduction INT;
    SELECT COUNT(*)
    FROM SpotifyClone.historico_reproducoes AS h
    INNER JOIN SpotifyClone.usuarios AS u
    ON u.usuario_id = h.usuario_id
    WHERE u.usuario = nome INTO total_reproduction;
    RETURN total_reproduction;
END $$

DELIMITER ;
