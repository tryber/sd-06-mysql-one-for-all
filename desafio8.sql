DROP TRIGGER IF EXISTS trigger_usuario_delete;
DELIMITER //
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM followers WHERE user_id = DELETED.user_id
DELETE FROM history_songs WHERE user_id = DELETED.user_id
END;
// DELIMITER ;
