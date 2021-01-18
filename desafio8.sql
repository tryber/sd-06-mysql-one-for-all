DELIMITER $$
DROP TRIGGER IF EXISTS `trigger_usuario_delete`;
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.seguindo_artistas WHERE usuarios_id = OLD.usuarios_id;
  DELETE FROM SpotifyClone.historicos WHERE usuarios_id = OLD.usuarios_id;
END $$

DELIMITER ;
