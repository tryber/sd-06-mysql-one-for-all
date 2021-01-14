DELIMITER $$

CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
  DELETE FROM historic WHERE user_id = OLD.id;
  DELETE FROM followers WHERE user_id = OLD.id;
END; $$

DELIMITER ;
