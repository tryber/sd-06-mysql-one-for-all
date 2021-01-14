USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON usuarios
FOR EACH ROW

BEGIN
DELETE FROM follow
WHERE usuario_id = OLD.usuario_id;
DELETE FROM historico
WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
