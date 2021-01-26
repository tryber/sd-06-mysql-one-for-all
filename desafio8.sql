DELIMITER $$

CREATE TRIGGER trigger_usuario_delete 
BEFORE DELETE ON SpotifyClone.usuarios 
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_de_reproducao
WHERE usuario_id = OLD.id;
DELETE FROM SpotifyClone.seguindo_artistas
WHERE usuario_id = OLD.id;
END $$

DELIMITER ;
