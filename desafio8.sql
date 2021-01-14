DELIMITER $

CREATE TRIGGER trigger_usuario_delete BEFORE DELETE
ON SpotifyClone.table_usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.table_historico WHERE usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.table_seguindo WHERE usuario_id = OLD.usuario_id;
END$

DELIMITER ;
