DELIMITER $$

CREATE TRIGGER trigger_usuario_delete BEFORE
DELETE ON spotifyclone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM spotifyclone.historico_de_reproducoes
WHERE usuario_id = OLD.usuario_id;
DELETE FROM spotifyclone.seguindo_artistas
WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
