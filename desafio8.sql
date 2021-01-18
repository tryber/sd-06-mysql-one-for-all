
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON SpotifyClone.usuario  FOR EACH ROW
BEGIN 
DELETE FROM SpotifyClone.historico WHERE historico.USUARIO_ID = OLD.USUARIO_ID;
DELETE FROM SpotifyClone.preferencias WHERE preferencias.USUARIO_ID = OLD.USUARIO_ID;
END$$;
DELIMITER ;
