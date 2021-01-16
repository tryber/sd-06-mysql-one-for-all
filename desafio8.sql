drop trigger if exists SpotifyClone.trigger_usuario_delete;

use SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguindo_artistas
WHERE usuario_id = old.usuario_id;
DELETE FROM SpotifyClone.historico_reproducao_usuarios
WHERE usuario_id = old.usuario_id;
END $$

DELIMITER ;
