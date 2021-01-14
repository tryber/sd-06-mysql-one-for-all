USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON usuarios
FOR EACH ROW

BEGIN
DELETE FROM SpotifyClone.follow
WHERE usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.historico
WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
