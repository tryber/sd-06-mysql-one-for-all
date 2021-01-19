DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN    
  DELETE FROM SpotifyClone.historico_de_reproducao
  WHERE id_usuario = OLD.id;
  DELETE FROM SpotifyClone.seguindo_artista
  WHERE id_usuario = OLD.id;
END; $$
DELIMITER ;
