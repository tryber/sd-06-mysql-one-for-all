DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotfyClone.Users
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.History
    WHERE History.user_id = OLD.user_id;
  DELETE FROM SpotifyClone.Follow
    WHERE Follow.user_id = OLD.user_id;
END $$

DELIMITER ;
