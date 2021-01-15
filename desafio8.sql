DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historicos WHERE id_usuario = OLD.id_usuario;
DELETE FROM SpotifyClone.seguindo WHERE id_usuario = OLD.id_usuario;
END $$

DELIMITER  ;
