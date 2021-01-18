USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM songs_played WHERE user_id = OLD.user_id;
DELETE FROM artists_following WHERE user_id = OLD.user_id;
END; $$
DELIMITER ;
