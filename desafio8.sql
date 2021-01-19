DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM song_played WHERE song_played.user_id = OLD.user_id;
DELETE FROM artists_following WHERE artists_following.user_id = OLD.user_id;
END; $$
DELIMITER ;
