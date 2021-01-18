DELIMITER $$
CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON SpotifyClone.user 
FOR EACH ROW
BEGIN 
DELETE FROM SpotifyClone.history 
WHERE history.user_id = OLD.user_id;
DELETE FROM SpotifyClone.following_singer 
WHERE following_singer.user_id = OLD.user_id;
END$$;
DELIMITER ;
