DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
  ON SpotifyClone.Users
  BEGIN
    DELETE FROM SpotifyClone.History h,
    WHERE h.user_id = OLD.user_id
    DELETE FROM SpotifyClone.Follow f
    WHERE f.user_id = OLD.user_id
  END; $$
DELIMITER ;
