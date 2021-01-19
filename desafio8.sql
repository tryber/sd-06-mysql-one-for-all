DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.songs_played WHERE songs_played.user_id = OLD.user_id;
DELETE FROM SpotifyClone.artists_following WHERE artists_following.user_id = OLD.user_id;
END; $$
DELIMITER ;
