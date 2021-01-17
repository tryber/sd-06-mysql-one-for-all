DELIMETER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
ON users
FOR EACH ROW 
BEGIN
    DELETE FROM SpotifyClone.histories
    WHERE histories.user_id = OLD.user_id;
    DELETE FROM SpotifyClone.follows
    WHERE follows.user_id = OLD.user_id;
END; $$
DELIMETER ;
