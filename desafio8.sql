DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
  ON Users
  BEGIN
    DELETE FROM History,
    WHERE History.user_id = OLD.user_id
    DELETE FROM Follow
    WHERE Follow.user_id = OLD.user_id
  END; $$
DELIMITER ;
