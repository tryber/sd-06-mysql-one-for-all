USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON usuario
  FOR EACH ROW
  BEGIN
    DELETE FROM SpotifyClone.historico_reproducao WHERE usuario_id = old.usuario_id;
    DELETE FROM SpotifyClone.seguidor WHERE usuario_id = old.usuario_id;
  END $$
DELIMITER ;
