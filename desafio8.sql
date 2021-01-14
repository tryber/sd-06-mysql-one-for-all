DELIMITER $$

CREATE TRIGGER `trigger_usuario_delete` 
AFTER DELETE ON `usuarios`
FOR EACH ROW
BEGIN
DELETE FROM historico USING historico INNER JOIN usuarios
WHERE historico.usuario_id = usuarios.id;
END $$

DELIMITER ;
