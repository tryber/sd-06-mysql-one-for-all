DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.tabela_usuario
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.tabela_reproducoes
    WHERE fk_usuario_id = OLD.usuario_id;
  DELETE FROM SpotifyClone.tabela_seguindo_artistas
    WHERE fk_usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
