DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW

BEGIN
DELETE FROM follow
WHERE usuario_id = OLD.usuario_id;
DELETE FROM historico
WHERE usuario_id = OLD.usuario_id;
END; $$

DELIMITER ;
