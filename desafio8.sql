DELIMITER $
CREATE TRIGGER trigger_usuario_delete BEFORE DELETE
on SpotifyClone.Users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.History 
WHERE History.user_id = OLD.user_id;
DELETE FROM SpotifyClone.Followers 
WHERE Followers.user_id = OLD.user_id;
END; $
DELIMITER ;
