DELIMITER $$
CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM historicos WHERE id_usuario = OLD.id_usuario;
DELETE FROM seguindo WHERE id_usuario = OLD.id_usuario;
END $$
DELIMITER  ;
