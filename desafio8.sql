DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.reproduction_history
WHERE user_id = OLD.user_id;
DELETE FROM SpotifyClone.user_following
WHERE user_id =OLD.user_id;
END; $$
DELIMITER ;
