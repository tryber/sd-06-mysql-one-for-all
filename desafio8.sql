DROP TRIGGER IF EXISTS SpotifyClone.trigger_usuario_delete;

USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
    DELETE FROM reproducoes WHERE usuario_id = OLD.usuario_id;
    DELETE FROM seguindo WHERE usuario_id = OLD.usuario_id;
END; $$

DELIMITER;
