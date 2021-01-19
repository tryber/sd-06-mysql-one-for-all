DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.song_played WHERE user_id = OLD.user_id;
  DELETE FROM SpotifyClone.artists_following WHERE user_id = OLD.user_id;
END; $$
DELIMITER ;
