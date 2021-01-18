DELIMITER $$
CREATE TRIGGER trigger_usuario_delete AFTER DELETE ON SpotifyClone.usuario FOR EACH ROW
BEGIN
SET foreign_key_checks = 0;
DELETE FROM SpotifyClone.seguidor_artista WHERE seguidor_artista.usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.historico_reproducao WHERE historico_reproducao.usuario_id = OLD.usuario_id;
END $$;
DELIMITER ;
