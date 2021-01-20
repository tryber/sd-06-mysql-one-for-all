DELIMETER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users FOR EACH ROW
BEGIN
    DELETE FROM histories WHERE histories.user_id = OLD.user_id;
    DELETE FROM follows WHERE follows.user = OLD.user_id;
END; $$
DELIMETER ;
