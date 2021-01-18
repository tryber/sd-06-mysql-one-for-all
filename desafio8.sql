DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON usuario
FOR EACH ROW
BEGIN
    DELETE FROM historico
    WHERE usuario_id = old.id;
    DELETE FROM seguindo
    WHERE usuario_id = old.id;
END; $$
DELIMITER ;
delete from usuario
where nome = 'Thati';
