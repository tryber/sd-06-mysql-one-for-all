DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON SpotifyClone.usuarios
  FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.historico
    WHERE id_usuario = OLD.id_usuario;
  DELETE FROM SpotifyClone.seguidores
    WHERE id_usuario = OLD.id_usuario;
END $$

DELIMITER ;

DELETE FROM SpotifyClone.usuarios 
  WHERE nome_usuario = 'Thati'
  
SHOW TRIGGERS
  
SELECT * FROM SpotifyClone.usuarios

-- DROP TRIGGER trigger_usuario_delete