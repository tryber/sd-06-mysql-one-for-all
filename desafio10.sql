DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(nome VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_musicas INT;
    SELECT COUNT(*)
    FROM SpotifyClone.historico AS a
    JOIN SpotifyClone.usuarios AS b
    ON a.usuario = b.usuario_id
    WHERE b.nome = nome INTO total_musicas;
    RETURN total_musicas;
END $$

DELIMITER ;
