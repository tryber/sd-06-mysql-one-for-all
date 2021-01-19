DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON users
FOR EACH ROW
BEGIN
  DELETE FROM play_history WHERE user_id = OLD.id;
  DELETE FROM follow WHERE user_id = OLD.id;
END $$

DELIMITER ;
