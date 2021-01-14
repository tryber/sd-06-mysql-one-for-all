USE SpotifyClone;
DROP TRIGGER IF EXISTS trigger_usuario_delete;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
DELETE FROM reproducao WHERE usuario_id = OLD.usuario_id;
DELETE FROM seguindo WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
