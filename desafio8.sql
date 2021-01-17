DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
DELETE FROM seguidores WHERE usuario_id = OLD.usuario_id;
DELETE FROM reproducoes WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
