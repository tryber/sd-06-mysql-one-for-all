USE spotifyclone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete BEFORE DELETE
ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM usuarios_has_cancoes WHERE usuarios_id = OLD.id;
DELETE FROM usuarios_has_artistas WHERE usuarios_id = OLD.id;
END
$$ DELIMITER ;
