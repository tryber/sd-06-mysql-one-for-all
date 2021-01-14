DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
    DELETE FROM play_history
    WHERE play_history.user_id = OLD.id;
    DELETE FROM follows
    WHERE follows.user_id = OLD.id;
END; $$

DELIMITER  ;
