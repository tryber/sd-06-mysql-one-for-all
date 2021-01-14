DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(HR.usuario_id)
FROM SpotifyClone.usuarios AS U, SpotifyClone.historico_reproducoes AS HR
WHERE U.usuario_id = HR.usuario_id AND U.usuario_id = id
GROUP BY HR.usuario_id INTO total;
RETURN total;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
