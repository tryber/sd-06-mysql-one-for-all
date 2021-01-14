DELIMITER $$

CREATE TRIGGER `trigger_usuario_delete` 
AFTER DELETE ON `usuarios`
FOR EACH ROW
BEGIN
DELETE FROM historico WHERE id = old.id;
END $$

DELIMITER ;
