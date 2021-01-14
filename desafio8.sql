DELIMITER $$

CREATE TRIGGER trigger_usuario_delete BEFORE DELETE
ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM historico WHERE historico.usuario_id = old.id;
END $$

DELIMITER ;
