-- USE SpotifyClone;
-- DROP TRIGGER IF EXISTS trigger_usuario_delete;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete AFTER DELETE ON usuario
FOR EACH ROW
BEGIN
DELETE FROM reproducao WHERE usuario_id = OLD.usuario_id;
DELETE FROM seguindo WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;

-- DELETE FROM usuario WHERE nome = "Thati";
