DELIMITER $$
CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON SpotifyClone.usuario FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_reproducao WHERE historico_reproducao.usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.seguidor_artista WHERE seguidor_artista.usuario_id = OLD.usuario_id;
END $$;
DELIMITER ;
