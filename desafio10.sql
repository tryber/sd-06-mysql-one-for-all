DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_id VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE music_quantity INT;
SELECT COUNT(UC.usuario_id)
FROM usuarios_cancoes AS UC 
WHERE UC.usuario_id = usuario_id
INTO music_quantity;
RETURN music_quantity;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);

