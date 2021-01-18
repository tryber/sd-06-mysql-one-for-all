DELIMITER $$
CREATE TRIGGER nome_do_trigger
AFTER DELETE ON usuario
FOR EACH ROW
BEGIN
    DELETE FROM historico
    WHERE usuario_id = old.id;
    DELETE FROM seguindo
    WHERE usuario_id = old.id;
END; $$
DELIMITER ;