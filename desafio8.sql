DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
  ON SpotifyClone.Users u
  BEGIN
    DELETE * FROM SpotifyClone.History h,
    WHERE h.user_id = u.user_id
    DELETE * FROM SpotifyClone.Follow f
    WHERE f.user_id = u.user_id
  END; $$
DELIMITER ;
