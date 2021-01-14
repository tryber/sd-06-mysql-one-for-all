DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)	
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_musicas INT;
SELECT COUNT(usuario_id)
FROM spotifyclone.historico_de_reproducoes
WHERE spotifyclone.historico_de_reproducoes.usuario_id = id_usuario
INTO quantidade_de_musicas;
RETURN quantidade_de_musicas;
END $$

DELIMITER ;
